
# ICS Pentest Toolkit

Ce dépôt contient un script d'installation pour configurer un environnement de test de pénétration dans des systèmes de contrôle industriel (ICS) sur une machine Kali Linux. Le script automatise l'installation et l'organisation d'outils essentiels pour les audits de sécurité et les tests de pénétration dans des infrastructures ICS.

## Contenu du dépôt

- **`install_ics_pentest.sh`** : Script principal pour installer les outils, organiser la hiérarchie des dossiers et configurer l'environnement de pentest ICS.

## Structure des dossiers

Le script crée la hiérarchie de dossiers suivante dans `~/Documents/ICS` pour organiser les différents outils et fichiers :

```
Documents/ICS/
├── firmware/      # Dossiers pour les outils d'analyse de firmware
├── tools/         # Outils de tests de pénétration ICS
├── framework/     # Frameworks pour l'exploitation de vulnérabilités ICS
├── logs/          # Journaux de logs des analyses
├── scans/         # Résultats des scans de sécurité
└── reports/       # Rapports des tests de pénétration
```

## Installation

1. Cloner le dépôt et naviguer dans le répertoire :
   ```bash
   git clone https://github.com/votre-utilisateur/ics-pentest-toolkit.git
   cd ics-pentest-toolkit
   ```

2. Rendre le script exécutable et lancer l'installation :
   ```bash
   chmod +x install_ics_pentest.sh
   sudo ./install_ics_pentest.sh
   ```

**Remarque** : Ce script doit être exécuté avec les privilèges administrateur pour installer les dépendances et les outils.

## Outils inclus

Voici une liste des outils installés par le script, chacun étant placé dans le sous-dossier approprié pour un accès simplifié.

### Outils d'analyse et de capture

- **Wireshark** : Analyseur de paquets réseau pour observer les protocoles ICS (Modbus, DNP3, etc.).
- **Intercepter-NG** : Capture de trafic réseau pour une analyse en temps réel des communications industrielles.

### Outils de test de protocole

- **ModScan** : Analyse des protocoles Modbus/TCP et DNP3.
- **pyModbus** : Bibliothèque Python pour interagir avec les dispositifs Modbus.
- **Mbtget** : Scanner Modbus pour diagnostiquer les échanges de données.

### Outils pour les tests d'intrusion SCADA

- **SCADAPASS** : Outil de force brute pour tester les mots de passe des systèmes SCADA.
- **PLCScan** : Détection et cartographie des appareils PLC dans un réseau industriel.
- **Nmap avec scripts ICS** : Scan réseau avancé avec des scripts pour les protocoles et dispositifs industriels.

### Frameworks d'exploitation

- **Metasploit Framework** : Framework avec modules pour exploiter les vulnérabilités SCADA et ICS.
- **Industrial Exploitation Framework (IEF)** : Scripts d'exploitation des vulnérabilités SCADA et PLC.
- **SCADAfence** : Ensemble d’outils de sécurité pour les réseaux IoT industriels.

### Simulateurs et Honeypots

- **Conpot** : Honeypot ICS pour simuler des environnements industriels et observer les tentatives d'attaque.

### Outils d’analyse de firmware

- **Firmware Analysis Toolkit** : Framework d’analyse de firmware pour détecter les vulnérabilités dans les appareils ICS.
- **Firmwalker** : Outil de recherche dans les firmwares pour identifier des failles potentielles.

### Communication avec les bus industriels

- **Snap7** : Bibliothèque pour interagir avec les automates Siemens S7.
- **Hydrabus** : Outil de communication avec les bus industriels (I2C, SPI).

## Utilisation

Chaque outil est installé et déplacé dans le sous-dossier correspondant (`tools`, `framework`, `firmware`, etc.). Une fois le script exécuté, accédez aux outils via leurs emplacements respectifs, par exemple :

```bash
cd ~/Documents/ICS/tools/
./ModScan/modscan.py
```

## Remerciements

Ce script regroupe des outils open-source pour créer un environnement de pentest ICS. Merci aux développeurs des projets listés ci-dessus pour leurs contributions à la sécurité des infrastructures industrielles.
