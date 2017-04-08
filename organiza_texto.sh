#!/bin/bash
#Versão 1.0
# Criado 07/04/2017
#e-mail:.fausto.ncc1701@gmail.com
# Coloca ";"Host_name e Service_descrition estes dois campos podem ser substituidos por quais quer outros campos.

echo "ORGANIZA TEXTO"
echo 
echo "Digite o nome do arquivo:."
read NOVO
cat $NOVO | sed -e '/host_name/N;s/\n//' -e '/service_description/N;s/\n//' | awk '{print $1,$2 ";" $3,$4 ";" $5,$6 ";\n"}' >> $NOVO.novo
echo "O seu arquivo foi salvo no path abaixo: "pwd
ls -lh $NOVO.novo| awk '{print "Permissões" " "$1 " " "/" "Tamanho" " " $5 " " "/" " " "Nome do Arquivo:_" " " $9}'







#------------------------------------End_OF_File------------------------------------------------------
