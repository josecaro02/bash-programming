# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Jose :D

numA=10
numB=4

echo "Operadores Aritméticos"
echo "Número: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A - B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Modulo A % B = " $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Número: A=$numA y B=$numB"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA == numB))

echo -e "\nOperadores Asignación"
echo "Número: A=$numA y B=$numB"
echo "Sumar A += B = " $((numA += numB))
echo "Restar A -= B = " $((numA -= numB))
echo "Multiplicación A *= B = " $((numA *= numB))
echo "Dividir A /= B = " $((numA /= numB))
echo "Modulo A %= B = " $((numA %= numB))
