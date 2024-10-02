#!/bin/bash

# Kontrollime, kas kasutaja on sisestanud failinime (kui ei, siis on ta ilmselt unustanud, kus ta on)
if [ $# -ne 1 ]; then
    echo "Kasutamine: $0 <inimesed_fail> (kui sa ei tea, mis see on, siis mine tagasi magama!)"
    exit 1
fi

# Määrame sisend- ja väljundfailide teed (sest me ei taha, et failid eksiks nagu kadunud sokid)
input_file="$1"        # Sisendfail, kus on inimeste andmed (loodame, et seal on rohkem kui ainult 'Mina')
output_dir="./konveier" # Kataloog, kuhu salvestatakse väljundfailid (sest me ei saa kunagi piisavalt konveiere)
first_names_file="$output_dir/eesnimed.txt"    # Fail, kuhu salvestatakse eesnimed (kui nad ei ole liiga naljakad)
last_names_file="$output_dir/perenimed.txt"    # Fail, kuhu salvestatakse perekonnanimed (kui nad ei ole liiga keerulised)
domains_file="$output_dir/domeenid.txt"        # Fail, kuhu salvestatakse domeenid (sest kõik vajavad oma nurka internetis)
usernames_file="$output_dir/kasutajad.txt"     # Fail, kuhu salvestatakse kasutajatunnused (kui nad ei ole juba varastatud)
emails_file="$output_dir/meilid.txt"           # Fail, kuhu salvestatakse e-mailid (kui nad ei ole spämmi täis)

# Loome väljundi katalooge, kui neid ei eksisteeri (sest me ei taha, et nad oleksid nagu vaimud)
mkdir -p "$output_dir"

# 6. samm: Lõika eesnimed ja salvesta need faili (kui nad ei ole liiga lühikesed, et neid lugeda)
cut -d',' -f2 "$input_file" | sed 's/;.*//;s/[0-9]*-.*//;s/^[ \t]*//;s/[ \t]*$//' > "$first_names_file"

# 7. samm: Lõika perekonnanimed ja salvesta need faili (kui nad ei ole liiga naljakad, et neid kirjutada)
cut -d',' -f1 "$input_file" | tr '[:upper:]' '[:lower:]' | sed 's/^[ \t]*//;s/[ \t]*$//' > "$last_names_file"

# 8. samm: Lõika domeenid ja salvesta need faili (kui nad ei ole liiga kummalised)
cut -d'-' -f2 "$input_file" | sed 's/^[ \t]*//;s/[ \t]*$//' > "$domains_file"

# 9. samm: Muuda eesnimed failis kõik tähed väikesteks (sest suured tähed on liiga uhked)
tr '[:upper:]' '[:lower:]' < "$first_names_file" > "$first_names_file.tmp" && mv "$first_names_file.tmp" "$first_names_file"

# 10. samm: Muuda perenimed failis kõik tähed väikesteks (sest nad ei peaks olema kuningad)
tr '[:upper:]' '[:lower:]' < "$last_names_file" > "$last_names_file.tmp" && mv "$last_names_file.tmp" "$last_names_file"

# 11. samm: Loo kasutajate nimed kujul eesnimi.perenimi ja salvesta faili (sest see on ainus viis, kuidas nad saavad oma nime teada)
paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"

# 12. samm: Loo e-mailid kujul eesnimi.perenimi@domeen ja salvesta faili (sest keegi peab ju neid saatma)
paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"

# Kuvame loodud failide nimed (kui nad ei ole kadunud nagu meie lootused)
echo "Eesnimed salvestatud faili: $first_names_file"
echo "Perekonnanimed salvestatud faili: $last_names_file"
echo "Domeenid salvestatud faili: $domains_file"
echo "Kasutajatunnused salvestatud faili: $usernames_file"
echo "E-mailid salvestatud faili: $emails_file"
