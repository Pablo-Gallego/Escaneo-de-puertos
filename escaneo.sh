#!/bin/bash
# Solicitar un nombre al usuario
echo "===================================="
echo "  Recolecion de informacion basica  "
echo "===================================="
read -p "Introduce el nombre o dominio para trabajar: " dominio

# Validar que el nombre no esté vacío
if [[ -z "$dominio" ]]; then
    echo "Error: No introdujiste un nombre válido. Intenta de nuevo."
    exit 1
fi

# Realizar un ping y capturar el TTL
resultado=$(ping -c 1 "$dominio" 2>/dev/null | grep "ttl=")

# Validar si el ping tuvo éxito
if [[ -z "$resultado" ]]; then
    echo "Error: No se pudo alcanzar el objetivo."
    exit 1
fi

# Extraer el valor de TTL
ttl=$(echo "$resultado" | grep -o "ttl=[0-9]*" | cut -d= -f2)

# Determinar el sistema operativo según el TTL
if [[ "$ttl" -eq 64 ]]; then
    echo "El objetivo '$dominio' parece ser un Linux (TTL=$ttl)."
elif [[ "$ttl" -eq 128 ]]; then
    echo "El objetivo '$dominio' parece ser un Windows (TTL=$ttl)."
elif [[ "$ttl" -eq 255 ]]; then
    echo "El objetivo '$dominio' parece ser un dispositivo de red (TTL=$ttl)."
else
    echo "El objetivo '$dominio' tiene un TTL=$ttl, lo que no coincide con los valores típicos de Linux/Mac (64) o Windows (128)."
fi

# Crear la carpeta si no existe
mkdir -p "$dominio"
echo "Carpeta '$dominio' creada."

# Ejecutar subfinder y guardar los resultados
echo "Ejecutando subfinder..."
subfinder -d "$dominio" -o "$dominio/subfinder.txt"
echo "Resultados de subfinder guardados en $dominio/subfinder.txt"

# Ejecutar Nmap en todos los dominios encontrados
echo "Ejecutando Nmap en dominios encontrados..."
for dominios in $(cat "$dominio/subfinder.txt"); do
    echo "Escaneando $dominios con Nmap..."
    nmap -p- -sV --version-all "$dominios" >> "$dominio/nmap.txt"
done
echo "Resultados de Nmap guardados en $dominio/nmap.txt"

# Ejecutar theHarvester y guardar los resultados
echo "Ejecutando theHarvester..."
theHarvester -d "$dominio" -b all -f "$dominio/theHarvester.xml"
echo "Resultados de theHarvester guardados en $dominio/theHarvester.xml"

xsltproc transform.xsl "$dominio/theHarvester.xml" > "$dominio/theHarvester.html" 

# Resumen final
echo "Proceso completado."
echo "===================================="
echo "        Resumen del escaneo         "
echo "===================================="
echo "Carpeta de resultados: $dominio"
echo "- Resultados de subfinder: $dominio/subfinder.txt"
echo "- Resultados de Nmap: $dominio/nmap.txt"
echo "- Resultados de theHarvester (XML): $dominio/theHarvester.xml"
echo "- Resultados de theHarvester (HTML): $dominio/theHarvester.html"
