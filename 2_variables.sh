# !/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=Jose
echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible en los demás procesos

export nombre

# LLamar al siguente script para recuperar la variable

./2_variables_2.sh

