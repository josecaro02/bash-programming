#!/bin/bash
# Programa para ejemplicar el uso de los loops anidados

echo "Loops Anidados"

for file in $(ls)
do
    for nombre in {1..4}
    do
	echo "Nombre archivo: $file _ $nombre"
    done
done
