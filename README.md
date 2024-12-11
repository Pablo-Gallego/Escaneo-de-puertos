# Herramienta de escaneo pasivo v1.1
Esta herramienta requiere permisos de administrador para su ejecución. 
Por lo tanto, debe ser lanzada utilizando el usuario root. <br><br>

> [!NOTE]
> El comando de inicio es el siguiente:<br>
> sudo /bin/bash (RUTA)/escaneo.sh (recomendado)<br>
> sudo ./escaneo.sh
<br>
Para garantizar su correcto funcionamiento, es indispensable contar con 
las siguientes herramientas previamente instaladas:<br>
-ping <br>
-nmap <br>
-subfinder <br>
-theHarvester <br>
-xsltproc <br><br>

Para verificar la instalación de las herramientas, utilice los siguientes comandos: <br>
command -v ping / ping -v <br>
command -v nmap / nmap -v <br>
command -v subfinder / subfinder -v <br>
command -v theHarvester / theHarvester -v <br>
command -v xsltproc /  xsltproc --version <br><br>

En caso de que alguna de estas herramientas no se encuentre instalada, puedes usar el script instalador.sh 
para instalar las herramientas en sistemas basados en debian. Las pruebas han sido realizadas en Ubuntu y kali Linux. Para otras distribuciones de Linux es necesario adaptar los comandos pertinentes de instalación. <br><br>

> [!NOTE]
> El script instalador.sh **no configura** theHarvester ni subfinder, solo los instala para poder usarlos como el usuario root(recomendable), o en su defecto el usuario que ejecute el script:
<br>
Adicionalmente, el archivo **transform.xsl debe estar ubicado en el mismo directorio que este programa**, 
ya que es requerido para el procesamiento adecuado de los resultados generados, en caso de moverlo sera necesario cambiar la ruta. <br>

## Desarrollado por:
**Pablo Gallego**<br>
Contactame por:<br>
[LINKEDIN](https://www.linkedin.com/in/pablogallegomartinez/) <br>

Toda retroalimentación sea agradecida y tomada en cuenta positivamente.
