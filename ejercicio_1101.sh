#!/bin/bash

#Literal 1
#Cambiar de directorio to CSB/unix/sandbox
cd ../CSB-master/unix/sandbox/

#Literal 2
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
a=`wc -l ../data/Marra2014_data.fasta | cut -d " " -f 1`
b=`head -n 1 ../data/Marra2014_data.fasta | grep -o " " | wc -l`
echo Número de filas= $a
echo Número de columas= $b
