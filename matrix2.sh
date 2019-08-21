#!/bin/bash
# Matrix
# # Autor : CodNeg <letonai@gmail.com>
# # Autor : /dev/movebo <dev.movebo@gmail.com>
# # Versão : 0.2
#
# # Se nenhum argumento tiver sido passado, exibiremos a mensagem padrão, 
# # do contrário atribuiremos todos os argumentos como uma única string a MSG
# # A barra ao contrário indica quando pausar e pular a linha
[ -z "$1" ] && MSG="Wake up, $USER...\The Matrix has you...\Follow the white
rabbit.\Knock, knock, $USER." || MSG="$*"

# POS armazena a posição dos caracteres
let POS=0

# let realiza operações aritméticas com inteiros
let TAM=( `echo "$MSG" | wc -c` )
tput clear  # Limpa a tela
tput civis  # Torna o cursos invisível

# # Veja a tabelas de cores e efeitos:
# http://aurelio.net/shell/canivete.html#cores
echo -e '\e[32;1m'

for i in $( seq $TAM )
do
  CHAR=$( echo -e "$MSG" | cut -c $i )
  if [ "$CHAR" = '\' ] ; then
   # Encontramos uma barra, a posição é zerada, pause 2 segundos, limpe a tela
    let POS=0
    sleep 2
    tput clear
  else
    sleep 0.2
    tput cup 0 $POS 
  echo $CHAR
    let POS++
  fi
done

# # Se houver o programa espeak, diga a frase abaixo:
ESPEAK=$( which espeak )
[ -n "$ESPEAK" ] && echo "Desperte, $USER." | $ESPEAK --stdin -v pt

sleep 2
tput cnorm  # Volte o cursor ao normal
echo -e '\e[m'  # Volte as cores normais
