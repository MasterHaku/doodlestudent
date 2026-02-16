# Doodle in quarkus
Ce dépôt GitHub est un fork de l'application Doodle d'Olivier Barais dans le cadre du projet TLC: Ops et Cloud.
Les Readme originaux de l'application se trouvent dans les fichiers [README.french.md](README.french.md) et
[README.english.md](README.english.md).

Ce dépôt est utilisé comme submodule du [projet sur le GitLab de l'ISTIC](https://gitlab2.istic.univ-rennes1.fr/tlc_2025_kesteman_amael/Projet-Kesteman-Amael). 
Le sujet du projet, ainsi que nos explications se trouvent dessus dans les fichiers `sujet.md` et `readme.md`.

## Groupe
Babinot Malo, Girard Hoel, Guinche Matheo, Kesteman Amael, Leblanc Ilona, Tyurin Stepan, Yabed Mohamed Val - M2 IL 2026

## Installer et déployer l'application
Pour déployer l'application sur une VM, il suffit de cloner le projet sur une VM et lancer le docker-compose à la racine.

La VM nécessite une connexion internet, Docker et Docker Compose d'installé.
```shell
git clone git@gitlab2.istic.univ-rennes1.fr:tlc_2025_kesteman_amael/Projet-Kesteman-Amael.git
cd Projet-Kesteman-Amael
git submodule update --init --recursive
cd doodlestudent
docker compose up
```