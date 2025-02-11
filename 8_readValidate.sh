#!/bin/bash
# Programa ejemplo como capturar la información del usuario
# y validarla
# Autor: Jose
# -n1 significa que solo puede ingresar un cargater
# -s significa silence para claves
# -p <propmts> para guadar el valor el la variable que le sigue

option=0
backupName=""
clave=""

echo "Programa Utilidates Postgres"
# Acepta información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresa el nombre del archivo:" backupName
echo -e "\n"
echo "Opción:$option, backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
