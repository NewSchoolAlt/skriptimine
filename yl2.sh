#!/bin/bash

# Küsime kasutajalt suvalist täisarvu
read -p "Sisesta suvaline täisarv: " number

# Arvutame numbrite summa
sum=0
for (( i=0; i<${#number}; i++ )); do
    digit=${number:$i:1}
    if [[ $digit =~ [0-9] ]]; then
        sum=$((sum + digit))
    fi
done

# Väljastame tulemuse
echo "Arvu $number numbrite summa on $sum"
