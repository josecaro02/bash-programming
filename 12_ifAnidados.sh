#!/bin/bash
# Programa ejemplo el uso de los if anidados

notaClase=0
continua=""


echo "Ejemplo sentencia if-else"
read -n1 -p "Indica cual es tu nota(1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Continuará estudiando en el siguiente nivel?:(s/n)" continua
    if [ $continua == "si" ]; then
	echo "Bienvenido al siguiente nivel"
    else
	echo "Gracias por trabajar con nosotros"
    fi
else
    echo "El alumno reprueba la materia"
fi

