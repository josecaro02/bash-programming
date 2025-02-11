#!/bin/bash
# Programa ejemplo como se realiza el paso de opciones 
# con o sin parametros
# Autor: Jose

echo "Programa Opciones"
echo "Opctión 1 enviada: $1"
echo "Opctión 2 enviada: $2"
echo "Opctiónes enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
    case "$1" in
	-a) echo "-a option utilizada";;
	-b) echo "-b option utilizada";;
	-c) echo "-c option utilizada";;
	*) echo "$! no es una opction";;
    esac
    shift
done

