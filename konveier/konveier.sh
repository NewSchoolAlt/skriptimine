
#!/bin/bash

#
input_file="inimesed.txt"
output_dir="./"
esi_nimed_file="$output_dir/eesnimed.txt"
perekonna_nimed_file="$output_dir/perenimed.txt"
domeenid_file="$output_dir/domeenid.txt"
kasutajad_file="$output_dir/kasutajad.txt"
meilid_file="$output_dir/meilid.txt"

mkdir -p "$output_dir"

cut -f2 -d"," "$input_file" | cut -f1 -d";" | tr '[:upper:]' '[:lower:]' > "$esi_nimed_file"

cut -f1 -d":" "$input_file" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z]//g' > "$perekonna_nimed_file" 

cut -f2 -d"-" "$input_file" > "$domeenid_file"

paste -d"." "$esi_nimed_file" "$perekonna_nimed_file" > "$kasutajad_file"

paste -d"@" "$kasutajad_file" "$domeenid_file" > "$meilid_file"

