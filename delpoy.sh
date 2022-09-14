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

#si option --create
if [ "$1" == "--create" ];then
    echo " "
    echo " notre option est --create "
    echo "  "


#si option --drop
elif [ "$1" == "--drop" ];then

    echo " "
    echo " notre option est --create "
    echo "  "
#si option --infos
elif [ "$1" == "--infos" ];then

    echo " "
    echo " notre option est --create "
#si option --start
elif [ "$1" == "--start" ];then

    echo " "
    echo " notre option est --create "
    echo "  "
#si option --ansible
elif [ "$1" == "--ansible" ];then

    echo " "
    echo " notre option est --create "
    echo "  "

#si aucune option affichage aide
else


echo "
    Options:
            - --create: lancer des conteneurs

            - --drop: suppprimer les conteneurs créer  par le deploy.sh

            - --infos: caractéristiques des conteneurs (ip, nom, user,...)

            - --start: redémarrage des conteneurs

            - --ansible: déploiementn arborescene ansible
"

fi
