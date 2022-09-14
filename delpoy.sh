#!/bin/bash

##############################################################
#
# Description : déploiement à la volée de conteneur docker
#
# Auteur: Kevin
#
# Date 14-09-22
#
#########################################################

echo "
    Options:
            - --create: lancer des conteneurs

            - --drop: suppprimer les conteneurs créer  par le deploy.sh

            - --infos: caractéristiques des conteneurs (ip, nom, user,...)

            - --start: redémarrage des conteneurs

            - --ansible: déploiementn arborescene ansible
"