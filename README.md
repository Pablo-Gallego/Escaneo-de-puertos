# Herramienta de escaneo pasivo v1.0
Esta herramienta requiere permisos de administrador para su ejecución. 
Por lo tanto, debe ser lanzada utilizando el usuario root. 

> [!NOTE]
> El comando de inicio es el siguiente:
> sudo /bin/bash <RUTA>/escaneo.sh

Para garantizar su correcto funcionamiento, es indispensable contar con 
las siguientes herramientas previamente instaladas:
-ping <br>
-subfinder <br>
-theHarvester <br>
-xsltproc <br>

Para verificar la instalación de las herramientas, utilice los siguientes comandos: <br>
command -v ping / ping -v <br>
command -v subfinder / subfinder -v <br>
command -v theHarvester / theHarvester -v <br>
command -v xsltproc / xsltproc -v <br>

En caso de que alguna de estas herramientas no se encuentre instalada, 
los siguientes comandos permitirán su instalación en sistemas basados en Debian/Ubuntu: <br>
**sudo apt update && sudo apt install -y iputils-ping xsltproc** <br><br>
Para instalación en el usuario local: <br>
    **-sudo apt install -y python3-pip** <br>
    **pip3 install subfinder theHarvester** <br><br>
Para todos los usuarios: <br>
    **-sudo apt install subfinder theHarvester** <br>

Para otras distribuciones de Linux es necesario usar los comandos pertinentes de instalación. <br>

Adicionalmente, el archivo **transform.xsl debe estar ubicado en el mismo directorio que este programa**, 
ya que es requerido para el procesamiento adecuado de los resultados generados. <br>

## Desarrollado por:
**Pablo Gallego**
Contactame por [LINKEDIN](https://www.linkedin.com/in/pablogallegomartinez/)
