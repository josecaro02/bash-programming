#!/bin/bash
# Programa para ejemplicar el empaquetamiento con comando pbzip

echo "Empaquetar todos los scripts de la carpeta actual"
#c crear v verbose f file
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2

