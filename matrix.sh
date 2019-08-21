#!/bin/bash
## Matrix 0.1
## By
##      CodNeg
### letonai@gmail.com
clear
tam1=$(echo $1 | wc -c)
tam=$(echo $(($tam1 -1)))
for i in $(seq $tam)
do
    sleep 0.2
    tput cup 0 $i
    echo $1 | cut -c $i
done
