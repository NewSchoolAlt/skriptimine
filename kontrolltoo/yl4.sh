#!/bin/bash

# Autor: Olev Savi
# Skripti nimi: kujund2
# Skripti ülesanne: Küsi kasutajalt ridade arvu ja trüki vastav kujund

# Küsi kasutajalt kujundi ridade arvu
read -p "Sisestage ridade arv: " rows

# Tsükkel, et trükkida pööratud kujund koos tühikutega
for ((i=rows; i>=1; i--)); do
    # Trüki juhtivad tähed
    for ((k=1; k<=i; k++)); do
        echo -n "*"
    done
    # Trüki tühikud
    for ((j=1; j<=(rows-i)*2; j++)); do
        echo -n " "
    done
    # Trüki tagumised tähed
    for ((k=1; k<=i; k++)); do
        echo -n "*"
    done
    # Mine järgmisele reale
    echo
done
