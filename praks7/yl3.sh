#!/bin/bash
# Skript, mis väljastab kujundi

read -p "Sisesta ridade arv: " rows
read -p "Sisesta tärnide arv reas: " stars

for ((i=1; i<=rows; i++))
do
  if [[ $i -eq 1 || $i -eq $rows ]]; then
    for ((j=1; j<=stars; j++))
    do
      echo -n "* "
    done
  else
    echo -n "* "
    for ((j=2; j<stars; j++))
    do
      echo -n "  "
    done
    echo -n "*"
  fi
  echo
done
