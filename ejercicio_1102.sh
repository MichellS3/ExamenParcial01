#!/bin/bash

cd ../
cd CSB-master/unix/data/

cut -d "	" -f 1 Gesquiere2011_data.csv | grep -w "3" | grep -c "3" $w
cut -d "	" -f 1 Gesquiere2011_data.csv | grep -w "27" | grep -c "27" $y

echo "Número de veces que se registraron los niveles del individuo 3: $w " $w
echo "Número de veces que se registraron los niveles del individuo 27: " $y
