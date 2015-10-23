#####################################
#curl -L <pagina>   -o <salida.html>
#####################################

##Grupo QUIREMA: "http://scienti1.colciencias.gov.co:8080/gruplac/jsp/visualiza/visualizagr.jsp?nro=00000000001870"
echo Grupo: QUIREMA
printf "\n"
curl -L http://scienti1.colciencias.gov.co:8080/gruplac/jsp/visualiza/visualizagr.jsp?nro=00000000001870   -o QUIREMA.html
printf "\n"

echo Done!
