#!/bin/bash
# Programa para ejemplicar el empaquetamiento con comando tar

echo "Empaquetar todos los scripts de la carpeta en un"
mkdir -m 755 backupScripts

echo -e "\n Copiar los scripts del directorio actual al nuevo
direcotrio backupScripts"

cp *.* backupScripts/
ls -la backupScripts
echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt
