[links/LINKEDIN]: (https://www.linkedin.com/in/pablogallegomartinez/)
# Herramienta de escaneo pasivo v1.0
## Esta herramienta requiere permisos de administrador para su ejecución. 
## Por lo tanto, debe ser lanzada utilizando el usuario root. 

> [!NOTE]
> El comando de inicio es el siguiente:
> sudo /bin/bash <RUTA>/escaneo.sh

Para garantizar su correcto funcionamiento, es indispensable contar con 
las siguientes herramientas previamente instaladas:
-ping
-subfinder
-theHarvester
-xsltproc

Para verificar la instalación de las herramientas, utilice los siguientes comandos:
command -v ping / ping -v
command -v subfinder / subfinder -v
command -v theHarvester / theHarvester -v
command -v xsltproc / xsltproc -v

En caso de que alguna de estas herramientas no se encuentre instalada, 
los siguientes comandos permitirán su instalación en sistemas basados en Debian/Ubuntu:
**sudo apt update && sudo apt install -y iputils-ping xsltproc**
Para instalación en el usuario local:
    **-sudo apt install -y python3-pip**
    **pip3 install subfinder theHarvester**
Para todos los usuarios:
    **-sudo apt install subfinder theHarvester**

Para otras distribuciones de Linux es necesario usar los comandos pertinentes de instalación.

Adicionalmente, el archivo **transform.xsl debe estar ubicado en el mismo directorio que este programa**, 
ya que es requerido para el procesamiento adecuado de los resultados generados.

## Desarrollado por:
  **Pablo Gallego**
### Contactame por [links/LINKEDIN]
