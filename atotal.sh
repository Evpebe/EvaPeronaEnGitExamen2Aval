#!/bin/bash
function calcular_total_consumo() {
  ciudad=$1
  total=0


  echo $total
}

consumo=`cat consumos.txt | wc -l | awk '{print $4}'`
ciudad=`cat consumos.txt | wc -l | awk '{print $1}'`

echo "Introduzca el nombre de la ciudad:"
read ciudad

while [[ ! -f "$ciudad.txt" ]]; do
  echo "La ciudad ingresada no existe, por favor introduzca una ciudad válida:"
  read ciudad
done

consumo_total=$(calcular_total_consumo $ciudad)

echo "El total de consumo de la ciudad $ciudad es: $consumo_total"