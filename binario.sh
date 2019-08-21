#!/bin/bash
# Tranformar numero em binário

# Testa numero
if [ -z $1 ];
then
  echo "Faltou parametro ou é inválido!"
  exit 1
fi
# Testa 0 ou 1
if [ $1 -eq 0 ] || [ $1 -eq 1 ];
then
  echo $1
  exit 1
fi 

NUMERO=$1
RESPOSTA=$(($NUMERO%2))
DIVIDE=$(($NUMERO/2));#echo $DIVIDE

while [ $DIVIDE -gt 1 ];
do
  RESTO=$(($DIVIDE%2))
  RESPOSTA=${RESTO}${RESPOSTA}
  DIVIDE=$(($DIVIDE/2));#echo $DIVIDE
done

RESPOSTA=${DIVIDE}${RESPOSTA}
echo $RESPOSTA
