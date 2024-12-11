#!/bin/bash
# Instalar los componentes necesarios en caso de no tenerlos en sistemas Ubuntu,
# los mensajes de salida se envien a /dev/null para evitar 
# Subfinder
echo "Todos los componentes se instalaran en ~/"
echo "Instalando subfinder..."
snap install go --classic  > /dev/null 2>&1
GOBIN=~/go/bin go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null 2>&1
echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
source ~/.bashrc
echo "Subfinder instalado."

# theHarvester
echo "Instalando theHarvester..."
add-apt-repository ppa:deadsnakes/ppa -y > /dev/null 2>&1
apt install python3 python3-pip git -y > /dev/null 2>&1
apt install python3.11 python3-pip python3-venv python3-distutils -y > /dev/null 2>&1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1 > /dev/null 2>&1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2 > /dev/null 2>&1
git clone https://github.com/laramies/theHarvester.git ~/theHarvester > /dev/null 2>&1
pip3 install -r ~/theHarvester/requirements/base.txt > /dev/null 2>&1
echo 'alias theharvester="python3 ~/theHarvester/theHarvester.py"' >> ~/.bashrc
source ~/.bashrc
echo "theHarvester instalado."
echo "Configuralo en ~/theHarvester"

# Instalar xsltproc y nmap
echo "Instalando xsltproc y nmap..."
apt install xsltproc nmap -y > /dev/null 2>&1
echo "Todos los componentes han sido instalados."