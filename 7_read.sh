# !/bin/sh
# Programa ejemplo como capturar la información del usuario
# utilizando el comando read
# Autor: Jose

option=0
backupName=""

echo "Programa Utilidates Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresa el nombre del archivo:" backupName
echo "Opción:$option, backupName:$backupName"
