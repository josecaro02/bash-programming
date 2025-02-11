#!/bin/bash
# Programa ejemplo el uso de la sentencia de decision if, else-if, else

notaClase=0
edad=0

echo "Ejemplo sentencia if-else"

read -p "Indica cúal es tu edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
