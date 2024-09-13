#!/bin/bash

# Skript arvutab, mitu bussi on vaja, et transportida kõik reisijad.
# Kui tekivad reisijad, kes ei mahu täisbusside sisse, siis suurendatakse busside arv ühe võrra.

# Küsi kasutajalt, mitu reisijat on grupis
read -p "Sisesta reisijate arv: " reisijad

# Küsi kasutajalt, mitu kohta on ühes bussis
read -p "Sisesta kohtade arv ühes bussis: " kohad

# Arvuta, mitu bussi on täielikult täidetud
taidetud_bussid=$(expr $reisijad / $kohad)

# Arvuta, mitu reisijat jääb üle
ulejaanud_reisijad=$(expr $reisijad % $kohad)

# Kui on ülejäänud reisijaid, siis lisa üks buss
if [ $ulejaanud_reisijad -gt 0 ]; then
    taidetud_bussid=$(expr $taidetud_bussid + 1)
fi

# Väljastame
echo "Kokku on vaja $taidetud_bussid bussi"
