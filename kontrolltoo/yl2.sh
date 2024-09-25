#!/bin/bash

# Autor: Olev Savi
# Skripti nimi: menu
# Skripti ülesanne: Kasutajale menüü kuvamine ja valiku põhjal sõnumi väljundamine

echo "Vali oma söök:"
echo "1) liha ja friikad"
echo "2) kala ja krõpsud"
echo "3) supp ja salat"
echo "4) lehma aju krõbuskid piimaga"

read -p "Tee oma valik (1 või 2 või 3 või lausa 4 kui oled hull.): " valik

case $valik in
    1)
        echo "Väga maitsev, aga jälgi oma tervist!!"
        echo "Head isu!"
        ;;
    2)
        echo "Brititoit ei ole maitsev!"
        echo "Head isu!"
        ;;
    3)
        echo "Nii tervislik ja igav..."
        echo "Head isu!"
        ;;
    4)
        echo "Julge valik, õnn kaasa!"
	echo "Head isu MOOO!!"
        ;;
    *)
        echo "Kas sa ei oska cisco numbreid lugeda v? Proovi uuesti luuser."
        ;;
esac
