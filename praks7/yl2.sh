#!/bin/bash
# Skript, mis väljastab kasutaja määratud arvu ridu ja tärne reas

# Küsi kasutajalt ridade arvu
read -p "Sisesta ridade arv: " ridade_arv

# Küsi kasutajalt tärnide arvu reas
read -p "Sisesta tärnide arv reas: " tarnide_arv

# Väljasta vastav kujund
for (( i=1; i<=ridade_arv; i++ ))
do
  echo -n "$i.  "
  for (( j=1; j<=tarnide_arv; j++ ))
  do
    echo -n "* "
  done
  echo
done
