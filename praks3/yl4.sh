#!/bin/bash

# Mitu reisijat on
echo -n "Mitu reisijat on: "
read mitu_reisijat
# Mitu kohta

echo -n "Mitu kohta on ühes bussis: "
read mitu_kohti
# Arvutame täisbussid ja mahajääjad
taidetud_bussid=$((mitu_reisijat / mitu_kohti))
maha_jaanud_reisijad=$((mitu_reisijat % mitu_kohti))

if [ $taidetud_bussid -eq 0 ] && [ $maha_jaanud_reisijad -gt 0 ]; then
    taidetud_bussid=1
    maha_jaanud_reisijad=0
fi

echo "Busse täideti täielikult: $taidetud_bussid"
echo "Maha jääb $maha_jaanud_reisijad reisijat"
