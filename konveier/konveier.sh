#!/bin/bash

# 
input_file="inimesed.txt"
output_dir="./"
first_names_file="$output_dir/eesnimed.txt"
last_names_file="$output_dir/perenimed.txt"
domains_file="$output_dir/domeenid.txt"
usernames_file="$output_dir/kasutajad.txt"
emails_file="$output_dir/meilid.txt"

mkdir -p "$output_dir"

cut -f2 -d"," "$input_file" | cut -f1 -d";" | tr '[:upper:]' '[:lower:]' > "$first_names_file"

cut -f1 -d":" "$input_file" | tr '[:upper:]' '[:lower:]' > "$last_names_file"

cut -f2 -d"-" "$input_file" > "$domains_file"

paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"

paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"

