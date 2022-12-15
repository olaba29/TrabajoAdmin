#!/bin/bash

# Guardamos la ip publica o externa del dispostivo en una variable
ip=$(curl -s ifconfig.me)

# Espero un poco a que se cargue la pagina
sleep 5s

# Printeamos el contenido obtenido al hacer un GET al server (puerto 8080) medianyte curl
echo " "
echo "-----CONTENIDO-----"
echo " "
curl -s $ip:8080
echo " "
