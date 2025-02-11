# !/bin/sh
# Programa ejemplo como capturar la información del usuario
# utilizando el comando echo, Read y $REPLY
# Autor: Jose

option=0
backupName=""

echo "Programa Utilidates Postgres"
echo -n "Ingresar una opción:"
read REPLY
option=$REPLY
echo -n "Ingresa el nombre del archivo:"
read REPLY
backupName=$REPLY
echo "Opción:$option, backupName:$backupName"
