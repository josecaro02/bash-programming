# !/bin/bash
# Programa ejemplo para paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictadio en el horario $horarioCurso"
echo "El numero de parametros enviados fue $#"
echo "El nombre del programa es $0"
echo "Los parametros enviados son $*"
