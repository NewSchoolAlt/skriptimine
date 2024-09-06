#!/bin/bash
# See skript tervitab kasutajat tema kasutajanimega, kasutades suurt algustähte

# Väljasta "Tere, " ilma reavahetuseta
echo -n "Tere, "

username=$(whoami)

echo -n "${username^}"
# Väljasta "!" reavahetusega
echo "!"
echo " "
