#!/bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0

#Función para instalar postgres
instalar_postgres(){
    echo -e "\nInstalar postgres..."
}

#Función para desintalar postgres
desinstalar_postgres(){
    echo -e "\nDesintalando postgres..."
}

#Función para sacar un respaldo de postgres
sacar_respaldo(){
    echo -e "\nSacar respaldo..."
    echo -e "\nDirectorio respaldo: $1"
}


#Función para restaurar respaldo
restaurar_respaldo(){
    echo -e "\nRestaurando respaldo..."
    echo -e "\nDirectorio respaldo: $1"
}


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
	    instalar_postgres
	    sleep 3
	    ;;
	2)
	    desinstalar_postgres
	    sleep 3
	    ;;
	3)
	    read -p "Directorio Backup:" directorioBackup
	    sacar_respaldo $directorioBackup
	    sleep 3
	    ;;
	4)
   	    read -p "\nDirectorio Respaldo:" directorioRespaldo
	    restaurar_respaldo $directorioRespaldo
	    sleep 3
	    ;;	
	5)
	    echo -e "\nSali del programa"
	    exit 0
	    ;;
    esac
done
