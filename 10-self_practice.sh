#!/bin/bash

name=""
last_name=""
edad=""
direccion=""
telefono=""

echo "Programa reto 2 platzi"

read -p "Ingresa tu nombre: " name
echo -e "\n"
read -p "Ingresa tu apellido: " last_name
echo -e "\n"
read -p "Ingresa tu edad: " edad
echo -e "\n"
read -p "Ingresa tu dirección: " direccion
echo -e "\n"
read -p "Ingresa tu telefono: " telefono
echo -e "\n"
echo "Hola $name $last_name, tienes $edad años, vives en $direccion y tu telefono es $telefono"
