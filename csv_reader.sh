#!/bin/bash

INPUT=grupos-fac-ccias-exactas.csv
OLDIFS=$IFS
IFS=';'
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

#lectura del archivo
while read Codigo_Colciencias Nombre_del_grupo Tratamiento Ano_de_creacion Nombre_del_coordinador Correo_Electronico Categoria_640 Categoria_693 Unidad_academica Direccion Bloque Telefono Oficina Programa_Colciencias Area_OCDE Sub_Area_OCDE Area_UdeA lineas_de_Investigacion GrupLAC
do
	#echo "Código_Colciencias : $Codigo_Colciencias"
	echo "Nombre_del_grupo : $Nombre_del_grupo"
	echo
	#echo "Tratamiento : $Tratamiento"
	#echo "Año_de_creación : $Ano_de_creacion"
	#echo "Nombre_del_coordinador : $Nombre_del_coordinador"
  	#echo "Correo_Electronico : $Correo_Electronico"
  	#echo "Categoria_640 : $Categoria_640"
	#echo "Categoria_693 : $Categoria_693"
  	#echo "Unidad_academica : $Unidad_academica"
  	#echo "Direccion : $Direccion"
  	#echo "Bloque : $Bloque"
  	#echo "Telefono : $Telefono"
  	#echo "Oficina : $Oficina"
  	#echo "Programa_Colciencias : $Programa_Colciencias"
  	#echo "Area_OCDE : $Area_OCDE"
  	#echo "Sub_Area_OCDE : $Sub_Area_OCDE"
  	#echo "Area_UdeA : $Area_UdeA"
  	#echo "lineas_de_Investigacion : $lineas_de_Investigacion"
  	echo "GrupLAC : $GrupLAC"
	echo
	curl -L $GrupLAC   -o $Nombre_del_grupo.html
	echo

done < $INPUT
IFS=$OLDIFS

echo "done! "
