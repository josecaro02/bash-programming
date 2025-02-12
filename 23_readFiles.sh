#!/bin/bash
# Programa para ejemplicar como se lee en un archivo

echo "Leer en un archivo"

cat $1
echo -e "\n Almacenar los varlos en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable especial IFS(internal field separator)
#para evitar que los espacios en blanco se recorten

echo -e "\n Leer archivos linea por linea"

while IFS= read linea
do
    echo "$linea"
done < $1



