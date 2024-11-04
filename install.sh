#!/bin/bash

# Script de configuration pour Kali Linux - Pentests ICS
# Ce script crée une hiérarchie de dossiers pour ICS et installe des outils de pentest ICS

# Vérification des droits d'utilisateur
if [[ $EUID -ne 0 ]]; then
   echo "Ce script doit être exécuté en tant qu'administrateur" 
   exit 1
fi

# Création de la hiérarchie des dossiers
echo "Création de la hiérarchie de dossiers ICS..."
mkdir -p ~/Documents/ICS/{firmware,tools,framework,logs,scans,reports}

# Mise à jour et installation de paquets de base
echo "Mise à jour du système et installation des paquets de base..."
apt update && apt upgrade -y
apt install -y git wget python3-pip

# Installation des outils ICS spécifiques et organisation dans les dossiers appropriés
echo "Installation et organisation des outils ICS..."

# 1. Wireshark pour l'analyse de paquets
apt install -y wireshark
mv /usr/bin/wireshark ~/Documents/ICS/tools/

# 2. ModScan (analyse Modbus/TCP et DNP3)
cd ~/Documents/ICS/tools
git clone https://github.com/fcayci/modscan.git
pip3 install -r modscan/requirements.txt

# 3. SCADAPASS pour force brute sur protocoles SCADA
git clone https://github.com/arnaudsoullie/SCADAPASS.git
pip3 install -r SCADAPASS/requirements.txt
mv SCADAPASS ~/Documents/ICS/tools/

# 4. PLCScan pour la détection d'appareils PLC
git clone https://github.com/leonjza/PLCScan.git
pip3 install -r PLCScan/requirements.txt
mv PLCScan ~/Documents/ICS/tools/

# 5. ICS-Common-Protocols pour la documentation des protocoles ICS
git clone https://github.com/hslatman/awesome-industrial-control-system-security.git ~/Documents/ICS/tools/ICS-Common-Protocols

# 6. Nmap et scripts pour les ICS
apt install -y nmap
wget https://raw.githubusercontent.com/digitalbond/Redpoint/master/nmap-scripts -P /usr/share/nmap/scripts/
mv /usr/bin/nmap ~/Documents/ICS/tools/

# 7. Metasploit Framework avec modules SCADA
apt install -y metasploit-framework
mv /usr/bin/msfconsole ~/Documents/ICS/framework/

# 8. pyModbus pour interagir avec Modbus
pip3 install pymodbus

# 9. Conpot - un honeypot ICS
apt install -y conpot
mv /usr/bin/conpot ~/Documents/ICS/tools/

# 10. Snap7 - pour la communication avec les automates Siemens S7
pip3 install python-snap7
mv /usr/local/lib/python*/dist-packages/snap7* ~/Documents/ICS/tools/

# 11. Industrial Exploitation Framework (IEF)
git clone https://github.com/digitalbond/IndustrialFramework.git ~/Documents/ICS/framework/IndustrialFramework
pip3 install -r ~/Documents/ICS/framework/IndustrialFramework/requirements.txt

# 12. SCADAfence pour l'évaluation de la sécurité des systèmes ICS
git clone https://github.com/SCADAfence/SF-IOT-Security-Tools.git ~/Documents/ICS/tools/SCADAfence

# 13. Intercepter-NG pour la capture et analyse de paquets
apt install -y intercepter-ng
mv /usr/bin/intercepter-ng ~/Documents/ICS/tools/

# 14. Mbtget - pour scanner les communications Modbus
apt install -y mbtget
mv /usr/bin/mbtget ~/Documents/ICS/tools/

# 15. Firmware Analysis Toolkit - pour l’analyse de firmwares ICS
cd ~/Documents/ICS/firmware
git clone https://github.com/attify/firmware-analysis-toolkit.git
pip3 install -r firmware-analysis-toolkit/requirements.txt

# 16. Firmwalker - un autre outil pour analyser les firmwares
git clone https://github.com/craigz28/firmwalker.git ~/Documents/ICS/firmware/firmwalker

# 17. Hydrabus - un outil de communication pour interagir avec les bus industriels (I2C, SPI, etc.)
git clone https://github.com/hydrabus/hydrabus.git ~/Documents/ICS/tools/hydrabus
cd ~/Documents/ICS/tools/hydrabus && make

# Finalisation
echo "Installation des outils et organisation terminée."

# Vérification des installations
echo "Outils dans ~/Documents/ICS/tools :"
ls ~/Documents/ICS/tools/
echo "Frameworks dans ~/Documents/ICS/framework :"
ls ~/Documents/ICS/framework/
echo "Dossiers de firmware dans ~/Documents/ICS/firmware :"
ls ~/Documents/ICS/firmware/
echo "Structure de dossiers ICS complète et prête pour les pentests."

echo "Configuration prête pour les audits et pentests ICS."
