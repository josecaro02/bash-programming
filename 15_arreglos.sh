#!/bin/bash
# Programa ejemplificar el uso de arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Jose, David, Tori)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores

echo "Arreglo de números ${arregloNumeros[*]}"
echo "Arreglo de cadenas ${arregloCadenas[*]}"
echo "Arreglo de rangos ${arregloRangos[*]}"

#Imprimir tamaño de los arreglos

echo -e "Tamaño Arreglo de números: ${#arregloNumeros[*]}"
echo -e "Tamaño Arreglo de cadenas: ${#arregloCadenas[*]}"
echo -e "Tamaño Arreglo de rangos: ${#arregloRangos[*]}"

#Imprimir la posición 3 de cada arreglo

echo "Posición 3 Arreglo de números ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de cadenas ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de rangos ${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de números ${arregloNumeros[*]}"
echo -e "Tamaño Arreglo de números: ${#arregloNumeros[*]}"


 
