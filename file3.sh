#!/bin/bash
score_total=0
start=0
for ((c=$start; c<=$1; c++)) 
do
echo "LANCER numéro $c"
lancer1=$(($RANDOM%20+1))
lancer2=$(($RANDOM%20+1))
echo "lancer1 : $lancer1, lancer2 : $lancer2"
if [[ $lancer1 -eq $lancer2 ]]; then
echo "DEAD!"
score_total=0
break
fi
score_total=$((score_total+lancer1+lancer2))
echo score total actuel : $score_total
echo ____________________
done
echo "votre score total est : $score_total"
