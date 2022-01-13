#!/bin/bash

#Literal 1
echo Cambiar de directorio to CSB/unix/sandbox
cd ../CSB-master/unix/sandbox/
pwd
echo  

#Literal 2
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
a=`wc -l ../data/Marra2014_data.fasta | cut -d " " -f 1`
b=`head -n 1 ../data/Marra2014_data.fasta | grep -o " " | wc -l`
echo Número de filas= $a
echo Número de columas= $b
echo 

#Literal3
echo Crear una copia de Marra 2014_data.fasta in the sandbox and name it my_file.fasta
cp ../data/Marra2014_data.fasta .
cp Marra2014_data.fasta my_file.fasta
rm Marra2014_data.fasta
echo Mostrar los archivos .fasta de sandbox
ls *.fasta
echo 

#Literal4
echo ¿Cuántos contigs se clasifican como isogroup00036?
c=`grep -w "isogroup00036" my_file.fasta | grep -c "isogroup00036"`
echo Existen $c que se clasifican como isogroup00036
echo 

#Literal5
echo Reemplace el delimitador original de dos espacios con una coma
d=`head -n 1 my_file.fasta`
sed -i 's/  /,/g' my_file.fasta
e=`head -n 1 my_file.fasta`
echo Original: $d
echo Reemplazando: $e
