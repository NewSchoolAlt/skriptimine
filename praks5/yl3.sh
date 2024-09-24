#!/bin/bash
# Skript, mis tervitab kasutajat vastavalt sisestatud kellaaegadele

echo "Sisesta aja väärtus (0-23): "
read hour

if [ $hour -ge 6 ] && [ $hour -lt 12 ]; then
    echo "Tere hommikust!"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    echo "Tere päevast!"
elif [ $hour -ge 18 ] && [ $hour -lt 22 ]; then
    echo "Tere õhtust!"
elif [ $hour -ge 22 ] || [ $hour -lt 6 ]; then
    echo "Head ööd!"
else
    echo "Vale väärtus! Palun sisesta kellaaeg vahemikus 0-23."
fi
