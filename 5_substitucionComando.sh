# !/bin/bash
# Programa para revisar como ejecutar comandos dentro
# de un programa y almacenarlos en una variable
# para luego usarlos
# Autor: Jose :D

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es: $ubicacionActual"
echo "Información del Kernel: $infoKernel"

