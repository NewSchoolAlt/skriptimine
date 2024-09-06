#!/bin/bash
# See skript tervitab kasutajat tema kasutajanimega, kasutades suurt algustähte

# Väljasta "Tere, " ilma reavahetuseta
echo -n "Tere, "

# Tekita kasutaja nimi, muuda esimene täht suureks ja väljasta ta ilma reavahetuseta
username=$(whoami)
echo -n "${username^}"

# Väljasta "!" reavahetusega
echo "!"
