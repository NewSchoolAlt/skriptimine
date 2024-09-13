#!/bin/bash

# Küsib kasutajalt täisarvu
read -p "Palun sisesta täisarv: " number

# Kontrollib, kas arv on paaris või paaritu
if (( number % 2 == 0 )); then
    echo "Sisestatud arv $number on paaris."
else
    echo "Sisestatud arv $number on paaritu."
fi
