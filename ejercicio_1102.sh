#!/bin/bash

#Dirección de la data
cd ../
cd CSB-master/unix/data/

#Literal 1
echo "¿Cuántas veces se registraron los niveles de los individuos 3 y 27?"

a=`cut -f 1 Gesquiere2011_data.csv | grep -w "3" | grep -c "3"`
b=`cut -f 1 Gesquiere2011_data.csv | grep -w "27" | grep -c "27"`

echo Número de veces que se registraron los niveles del individuo 3 es=  $a
echo Número de veces que se registraron los niveles del individuo 27 es=  $b
echo 

#Literal 2
echo "Escribir un script tomando como entrada el nombre del archivo y el ID de la persona, y devolviendo el número de registros para ese ID."
d=111
e=`cut -f 1 Gesquiere2011_data.csv | grep -w $d | grep -c $d`
echo El número de registros para el ID$d es $e
echo 

#Literal 3
echo Escriba un script que devuelva el número de veces que se tomaron muestras de cada individuo
f=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | uniq`
for g in $f
do
h=`cut -f 1 Gesquiere2011_data.csv | grep -w $g | grep -c $g`
echo ID: $g counts: $h
done
