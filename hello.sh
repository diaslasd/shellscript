#!/bin/bash
# hello worl com tput
#
linhas=$(tput lines)
colunas=$(tput cols)
linha=$(expr $linhas / 2 - 1)
coluna=$(expr $colunas / 2 - 7)
reset
tput cup $linha $coluna
tput bold
tput rev
tput civis
echo "HELLO WORLD!!!"
read -s
tput cnorm
tput sgr0
tput home
clear
exit
