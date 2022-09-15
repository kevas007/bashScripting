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

# def  du mombre de conteneur
nb_machine=1

[ "$2" != " " ] && nb_machine=$2

# création  de conteneur
echo "debut de la création du conteneur"
for i in $(seq 1  $nb_machine);do

    docker run -tid --name $USERNAME-alpine-$i alpine:latest

    echo "Conteneur $USERNAME-alpine-$i créé "
done

echo "j'ai crée ${nb_machine} "
#si option --drop
elif [ "$1" == "--drop" ];then
    #suppression des conteneurs
    # docker rm -f  $USERNAME-alpine
    docker rm -f  $(docker ps -a | grep $USERNAME-alpine | awk '{print $1}')
    # fin de suppression
#si option --infos
elif [ "$1" == "--infos" ];then

    echo " "
    echo " notre option est --infos "
#si option --start
elif [ "$1" == "--start" ];then

    echo " "
    echo " notre option est --start "
    echo "  "
#si option --ansible
elif [ "$1" == "--ansible" ];then

    echo " "
    echo " notre option est --ansible "
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
