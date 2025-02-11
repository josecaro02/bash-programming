#!/bin/bash
# Programa para ejemplicar el uso de la sentencia for

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de números"
for num in ${arregloNumeros[*]}
do
    echo "Número:$num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $nom"
done

echo "Iterar en archivos"
for file in *
do
    echo "Nombre archivo: $file"
done

echo "Itear usando un comando"
for file in $(ls)
do
    echo "Nombre archivo: $file"
done

echo "Iterar formato tradicional"
for ((i =1; i < 10; i++)){
    echo "Numer: $i"
}   
