#!/bin/bash

# Autor: Olev Savi
# Skripti nimi: ylesanne 1
# Ülesanne: Tervitab sisselogitud kasutajat ja väljastab praeguse kuupäeva ja kellaaja

# Tervitab sisselogitud kasutajat
echo "Tervist, $USER!"

# Väljastab kuupäeva ja kellaaja
echo "Täna peaks olema vist $(date '+%d.%m.%Y') praegune kell on ilmselt $(date '+%H:%M')"
