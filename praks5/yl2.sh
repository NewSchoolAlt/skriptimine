#!/bin/bash
# Skript, mis väljastab aastaaja kuu numbri põhjal

echo "Sisesta kuu number: "
read kuu

case $kuu in
    1|2|12)
        echo "Praegu on talv"
        ;;
    3|4|5)
        echo "Praegu on kevad"
        ;;
    6|7|8)
        echo "Praegu on suvi"
        ;;
    9|10|11)
        echo "Praegu on sügis"
        ;;
    *)
        echo "Vale kuu number. Palun sisesta number vahemikus 1-12."
        ;;
esac
