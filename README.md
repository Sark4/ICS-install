
# ICS Pentest Toolkit

Ce dépôt contient un script d'installation pour configurer un environnement de test de pénétration dans des systèmes de contrôle industriel (ICS) sur une machine Kali Linux. Le script automatise l'installation et l'organisation d'outils essentiels pour les audits de sécurité et les tests de pénétration dans des infrastructures ICS.

## Contenu du dépôt

- **`install_ics_pentest.sh`** : Script principal pour installer les outils, organiser la hiérarchie des dossiers et configurer l'environnement de pentest ICS.

## Structure des dossiers

Le script crée la hiérarchie de dossiers suivante dans `~/Documents/ICS` pour organiser les différents outils et fichiers :

```
Documents/ICS/
├── firmware/      # Outils pour l'analyse de firmware
├── tools/         # Dossiers thématiques pour les outils de tests de pénétration ICS
│   ├── scan/          # Outils de scan réseau et de détection
│   ├── honeypot/      # Simulateurs et honeypots pour attirer les attaques
│   ├── exploitation/  # Frameworks et outils d'exploitation des vulnérabilités
│   ├── analysis/      # Outils d'analyse de trafic et de paquets réseau
│   ├── protocol/      # Outils pour interagir avec les protocoles industriels
│   ├── log/           # Outils pour l'analyse des journaux
│   ├── lorawan/       # Outils pour l'exploitation des réseaux LoRaWAN
│   ├── zigbee/        # Outils pour l'exploitation des réseaux Zigbee
│   ├── fuzzing/       # Outils de fuzzing pour tester les vulnérabilités
│   ├── radio/         # Outils pour les communications radio
│   ├── reverse/       # Outils de reverse engineering
│   └── general/       # Outils généraux pour les pentests ICS
├── framework/     # Frameworks pour l'exploitation de vulnérabilités ICS
├── logs/          # Journaux de logs des analyses
├── scans/         # Résultats des scans de sécurité
└── reports/       # Rapports des tests de pénétration
```

## Installation

1. Cloner le dépôt et naviguer dans le répertoire :
   ```bash
   git clone https://github.com/Sark4/ics-pentest-toolkit.git
   cd ics-pentest-toolkit
   ```

2. Rendre le script exécutable et lancer l'installation :
   ```bash
   chmod +x install_ics_pentest.sh
   ./install_ics_pentest.sh
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
- **mbtget** : Scanner Modbus pour diagnostiquer les échanges de données.

### Frameworks d'exploitation

- **Metasploit Framework** : Framework avec modules pour exploiter les vulnérabilités SCADA et ICS.
- **Bettercap** : Outil pour les attaques MITM et le contrôle des réseaux.
- **ICS-S7comm** : Exploit pour le protocole S7comm des PLC Siemens.
- **ISF pour Schneider Modicon** : Exploit pour les vulnérabilités connues des automates Schneider.

### Dossier Log

- **Plaso** : Outil pour l'analyse et l'extraction des journaux.

### Dossier LoRaWAN

- **ChirpOTLE** : Outil pour l'exploitation des réseaux LoRaWAN.

### Dossier Zigbee

- **KillerBee** : Outil pour l'exploitation des réseaux Zigbee.

### Dossier Fuzzing

- **Fuzzowski** : Outil pour les tests de fuzzing sur les protocoles industriels.

### Dossier Radio

- **gr-smart_meters** : Outil pour l'analyse des communications radio.

### Dossier Reverse

- **Binwalk** : Outil de reverse engineering pour les images de firmware.

### Dossier General

- **Scapy** : Outil pour la manipulation de paquets réseau.
- **s7scan** : Scanner pour les dispositifs Siemens S7.
- **Snap7** : Interface pour communiquer avec les automates Siemens.
- **PLCScan** : Détection et cartographie des appareils PLC dans un réseau industriel.
- **Modscan** : Scanner pour Modbus et autres protocoles industriels.
- **SMOD** : Framework pour exploiter les vulnérabilités SCADA et ICS.
- **ISF** : Framework pour les tests d'intrusion sur les systèmes industriels.

### Simulateurs et Honeypots

- **Conpot** : Honeypot ICS pour simuler des environnements industriels et observer les tentatives d'attaque.

## Utilisation

Chaque outil est installé et déplacé dans le sous-dossier correspondant (`scan`, `honeypot`, `exploitation`, `analysis`, `protocol`, etc.). Une fois le script exécuté, accédez aux outils via leurs emplacements respectifs, par exemple :

```bash
cd ~/Documents/ICS/tools/scan/
./ModScan/modscan.py
```

## Remerciements

Ce script regroupe des outils open-source pour créer un environnement de pentest ICS. Merci aux développeurs des projets listés ci-dessus pour leurs contributions à la sécurité des infrastructures industrielles.
