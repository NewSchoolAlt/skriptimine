#!/bin/bash
# Skript, mis väljastab tärnid kujul, kus iga järgnev rida sisaldab ühe tärni rohkem kui eelmine

read -p "Sisesta ridade arv: " rows

for ((i=1; i<=rows; i++))
do
  for ((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo ""
done
