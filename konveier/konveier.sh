#!/bin/bash
echo " "

#Määrame output kataloogi
output_dir="./konveier"

#Määrame eesnimede faili
first_names_file="$output_dir/eesnimed.txt"

#Määrame eesnimede faili
last_names_file="$output_dir/perenimed.txt"

#Määrame Domeeni faili
domains_file="$output_dir/domeenid.txt"

#määrame kasutajanimede faili
usernames_file="$output_dir/kasutajad.txt"

#määrame meilide jaoks faili
emails_file="$output_dir/meilid.txt"


#Kontrollib, kas fail on antud
if [ $# -ne 1 ]; then
    echo "Kasutamine: $0 <inimesed_fail>"
    echo "haha noob selline"
    exit 1
fi

#Määrab input faili
input_file="$1"

#Teeme output katalooge
mkdir -p "$output_dir"

#Kasutades sed käsku võtame input faili, lõikane sealt ülejäänud jama ära, jätame alles ainult eesnimed, ning salvestame Määratud faili
cut -d',' -f2 "$input_file" | sed 's/;.*//;s/[0-9]*-.*//;s/^[ \t]*//;s/[ \t]*$//' > "$first_names_file"

#Sama loogikaga on ka perenimede fail ja domeenide fail koostatud, ei viitsi pikki kommentaare panna
cut -d',' -f1 "$input_file" | tr '[:upper:]' '[:lower:]' | sed 's/^[ \t]*//;s/[ \t]*$//' > "$last_names_file"
cut -d'-' -f2 "$input_file" | sed 's/^[ \t]*//;s/[ \t]*$//' > "$domains_file"


#Loob kasutajanimed ja e-mailid failid
paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"
paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"

#Kuvame kasutajale loodud failide nimed
echo "Eesnimed: $first_names_file"
echo "Perekonnanimed: $last_names_file"
echo "Domeenid: $domains_file"
echo "Kasutajatunnused: $usernames_file"
echo "E-mailid: $emails_file"
