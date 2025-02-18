#!/bin/bash
# Programa para ejemplicar la forma de como transferir por la red
# utilizando el comando rsync y sus opciones de empaquetamientos
# para optimizar el envio de paquetes

echo "Empaquetar todos los scripts de la carpeta actual
y tranferirlos a otro equipo, usando rsync"

host=""
usuario=""
read -p "Ingrese el host:" host
read -p "Ingrese el usuario:" usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta
y transferir segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home/mtoscano


