#!/bin/bash

# Küsi kasutajalt, mitu reisijat on grupis
read -p "Sisesta reisijate arv: " reisijad

# Küsi kasutajalt, mitu kohta on ühes bussis
read -p "Sisesta kohtade arv ühes bussis: " kohad

# Arvuta, mitu bussi
taidetud_bussid=$(expr $reisijad / $kohad)

# Arvuta, mitu reisijat jääb üle
ulejaanud_reisijad=$(expr $reisijad % $kohad)

#Väljastame
echo "Täielikult täidetud busse: $taidetud_bussid"
echo "Ülejäänud reisijaid: $ulejaanud_reisijad"
