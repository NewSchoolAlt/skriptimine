#!/bin/bash
# See skript lubab kasutajal sisestada kuu numbri ja väljastab vastava kuu nimetuse.

echo -n "Sisesta kuu number (1-12): "
read kuu

case $kuu in
    1) echo "See on jaanuar" ;;
    2) echo "See on veebruar" ;;
    3) echo "See on märts" ;;
    4) echo "See on aprill" ;;
    5) echo "See on mai" ;;
    6) echo "See on juuni" ;;
    7) echo "See on juuli" ;;
    8) echo "See on august" ;;
    9) echo "See on september" ;;
    10) echo "See on oktoober" ;;
    11) echo "See on november" ;;
    12) echo "See on detsember" ;;
    *) echo "Viga: Palun sisesta number vahemikus 1 kuni 12." ;;
esac
