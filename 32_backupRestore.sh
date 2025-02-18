#!/bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0
fechaActual=$(date +%Y%m%d)

#Función para instalar postgres
instalar_postgres(){
    echo -e "\nVerificar la instalación de postgres"
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
	echo -e "\nPostgresql instalado en el equipo"
    else
	read -s -p "Ingresar contraseña de sudo:" password
	read -s -p "Ingresar contraseña a utilizar en postgres" passwordPostgres
	echo "$password" | sudo -S apt update
	echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
	sudo -u postgresql psql -c "ALTER USER  POSTGRES with PASSWORD '{$PASSWORDpOSTGRES}';"
	echo "$password" | sudo -S systemctl enable postgresql.service
	echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para desintalar postgres
desinstalar_postgres(){
    read -s -p $'\nIngresar contraseña de sudo:' password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -u --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para sacar un respaldo de postgres
sacar_respaldo(){
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p 'Elegir la base de datos a respaldar:' dbRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
	echo "Establecer permisos directorio"
	echo "$password" | sudo -S chmod 755 $1
	echo "Realizando respaldo..."
	sudo -u postgres pg_dump -Fc $dbRespaldo > "$1/dbRespaldo$fechaActual.bak"
	echo "Respaldo realizado correctamente en la ubicación: $1/dbRespaldo$fechaActual.bak"
    else
	echo "El directorio no existe"
    fi
}


#Función para restaurar respaldo
restaurar_respaldo(){
    eho "Listar los resplados"
    read -p "Ingresar el directorio donde están los respaldos" directorioBackup
    ls -la $directorioBackup
    read -p "Elegir el respaldo a restaurar" repaldoRestaurar
    echo -e "\n"
    read -p "Ingrese el nombre de la base de datos destino" dbDestino
    verifyDB=(sudo -u postgresql psql -lqt | cut-d \| -f 1 | grep -wq $dbDestino)
    if [ $? -eq 0 ]; then
	echo "Restaurando en la db destino: $dbDestino"
    else
	sudo -u postgres psql -c "Create database $dbDestino"
    fi

    if [ -f "$1/$respaldoRestaurar" ]; then
	echo "Restaurando respaldo..."
	sudo -u postgres pg_restore -Fc -d $dbDestino "$directorioBackup/$respaldoRestaurar"
	echo "Listar las bases de datos"
	sudo -u postgresql psql -c "\l"
    else
	echo "Respaldo de $respaldoRestaurar no existe"
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
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
