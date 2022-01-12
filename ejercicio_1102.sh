#!/bin/bash

cd ../
cd CSB-master/unix/data/

#Literal A
echo "¿Cuántas veces se registraron los niveles de los individuos 3 y 27?"

a=`cut -f 1 Gesquiere2011_data.csv | grep -w "3" | grep -c "3"`
b=`cut -f 1 Gesquiere2011_data.csv | grep -w "27" | grep -c "27"`

echo Número de veces que se registraron los niveles del individuo 3 es=  $a
echo Número de veces que se registraron los niveles del individuo 27 es=  $b
