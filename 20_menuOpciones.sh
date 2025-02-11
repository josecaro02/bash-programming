#!/bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0

while  :
do
    #Limpiar pantalla
    clear
    #Desplegar menu de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "_________________________________________"
    echo "             Menu principal              "
    echo "1. Instalar Postgres"
    echo "2. Desintalar Postgres"
    echo "3. Sacar respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción: [1-5]" opcion

    #Validar opcion ingresada
    case $opcion in
	1)
	    echo -e "\nInstalando postgres..."
	    sleep 3
	    ;;
	2)
	    echo -e "\nDesinstalar postgres..."
	    sleep 3
	    ;;
	3)
	    echo -e "\nSacar respaldo..."
	    sleep 3
	    ;;
	4)
	    echo -e "\nRestaurar respaldo..."
	    sleep 3
	    ;;	
	5)
	    echo -e "\nSali del programa"
	    exit 0
	    ;;
    esac
done
