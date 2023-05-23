#!/bin/bash

## Script de lancement de la toolchain en local pour le projet Fil Rouge     ##
##       NECESSITE DOCKER OU PODMAN (peut installer les dépendances)         ##
##         Auteurs : IRMA  /  TANGUY  / YANN  @ IB CEGOS RENNES              ##

# 
arch=$(arch)


# ASCII art
base64 -d <<< "ICBfX19fXyBfX19fX19fX18gICAgIF9fICAgICBfX19fXyAgICAgICAgICAgICAgX19fXyAgICAgICAgICAgIAogfF8gICBffF9fICAgX19cIFwgICAvIC8gICAgfCAgX18gXCAgICAgICAgICAgIC8gX18gXCAgICAgICAgICAgCiAgIHwgfCAgICB8IHwgICBcIFxfLyAvX19fX198IHwgIHwgfCBfX19fXyAgIF98IHwgIHwgfF8gX18gIF9fXyAKICAgfCB8ICAgIHwgfCAgICBcICAgL19fX19fX3wgfCAgfCB8LyBfIFwgXCAvIC8gfCAgfCB8ICdfIFwvIF9ffAogIF98IHxfICAgfCB8ICAgICB8IHwgICAgICAgfCB8X198IHwgIF9fL1wgViAvfCB8X198IHwgfF8pIFxfXyBcCiB8X19fX198ICB8X3wgICAgIHxffCAgICAgICB8X19fX18vIFxfX198IFxfLyAgXF9fX18vfCAuX18vfF9fXy8KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IHwgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHxffCAgICAgICAgCg=="

echo "###################################################################"

echo "   --------------    ITY-LOCAL-TOOLCHAIN    -------------------   "

echo "###################################################################"

echo " "

echo " LANCEMENT DU CONTAINER JENKINS + DOCKER "

docker build ./ -t docker.io/spywash/devops:jenkins-docker-$arch

docker run --privileged docker.io/spywash/devops:jenkins-docker-$arch
