#!/bin/bash

# Autor: Olev Savi
# Skripti nimi: kujund
# Skripti ülesanne: Kasutajalt ridade arvu küsimine ja vastava kujundi trükkimine

read -p "Sisesta ridade arrv: " read_count

for ((i=read_count; i>0; i--))
do
    for ((j=0; j<i; j++))
    do
        echo -n "* "
    done
    echo ""
done
