#!/bin/bash
# Programa ejemplo el uso de la sentencia case

opcion="" 

echo "Ejemplo sentencia case"
read -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"
case $opcion in
    "A") echo -e "\nOperación Guardar Archivo";;
    "B") echo -e "\nOperación Eliminar Archivo";;
    [C-E]) echo -e "\nNo está implementada la operación";;
    "*") echo -e "\nOpción incorrecta"
esac
