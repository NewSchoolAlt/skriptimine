#!/bin/bash

# Skript kontrollib, kas sisestatud täisarv on paaris või paaritu.
# Kasutamine: ./paarsus <täisarv>

# Kontrollib, kas täpselt üks argument on antud
if [ "$#" -ne 1 ]; then
    echo "Kaivita see skript koos arvuga mille paarsus soovid kontrollida. Näiteks: ./paarsus 3"
    exit 1
fi

number=$1

# Kontrollib, kas argument on täisarv
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Palun sisesta kehtiv täisarv."
    exit 1
fi

# Kontrollib, kas arv on paaris või paaritu
if (( number % 2 == 0 )); then
    echo "Antud arv on paaris."
else
    echo "Antud arv on paaritu."
fi
