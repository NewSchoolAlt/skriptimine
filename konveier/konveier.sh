#!/bin/bash

# Kontrolli, kas failinimi on antud
if [ $# -ne 1 ]; then
    echo "Kasutamine: $0 <inimesed_fail>"
    exit 1
fi

# Failide ja kataloogide määramine
input_file="$1"
output_dir="./konveier"
first_names_file="$output_dir/eesnimed.txt"
last_names_file="$output_dir/perenimed.txt"
domains_file="$output_dir/domeenid.txt"
usernames_file="$output_dir/kasutajad.txt"
emails_file="$output_dir/meilid.txt"

# Loome väljundi katalooge
mkdir -p "$output_dir"

# Eesnimede töötlemine
cut -d',' -f2 "$input_file" | sed 's/;.*//;s/[0-9]*-.*//;s/^[ \t]*//;s/[ \t]*$//' > "$first_names_file"

# Perekonnanimede töötlemine
cut -d',' -f1 "$input_file" | tr '[:upper:]' '[:lower:]' | sed 's/^[ \t]*//;s/[ \t]*$//' > "$last_names_file"

# Domeenide töötlemine
cut -d'-' -f2 "$input_file" | sed 's/^[ \t]*//;s/[ \t]*$//' > "$domains_file"

# Muuda kõik tähed väikesteks
tr '[:upper:]' '[:lower:]' < "$first_names_file" > "$first_names_file.tmp" && mv "$first_names_file.tmp" "$first_names_file"
tr '[:upper:]' '[:lower:]' < "$last_names_file" > "$last_names_file.tmp" && mv "$last_names_file.tmp" "$last_names_file"

# Loo kasutajanimed ja e-mailid
paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"
paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"

# Kuvame loodud failide nimed
echo "Eesnimed: $first_names_file"
echo "Perekonnanimed: $last_names_file"
echo "Domeenid: $domains_file"
echo "Kasutajatunnused: $usernames_file"
echo "E-mailid: $emails_file"
