#!/bin/bash
# Programa para ejemplicar el empaquetamiento con comando tar

echo "Empaquetar todos los scripts de la carpeta actual"
#c crear v verbose f file
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio de 9"

gzip -9 9_options.sh

