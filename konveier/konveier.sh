#!/bin/bash

# Define input and output file paths
input_file="inimesed.txt"
output_dir="./"
first_names_file="$output_dir/eesnimed.txt"
last_names_file="$output_dir/perenimed.txt"
domains_file="$output_dir/domeenid.txt"
usernames_file="$output_dir/kasutajad.txt"
emails_file="$output_dir/meilid.txt"

# Create output directory if it doesn't exist
mkdir -p "$output_dir"

# Step 6: Extract first names and save to file
cut -f2 -d"," "$input_file" | cut -f1 -d";" | tr '[:upper:]' '[:lower:]' > "$first_names_file"

# Step 7: Extract last names and save to file
cut -f1 -d":" "$input_file" | tr '[:upper:]' '[:lower:]' > "$last_names_file"

# Step 8: Extract domains and save to file
cut -f2 -d"-" "$input_file" > "$domains_file"

# Step 11: Create usernames in the format firstname.lastname
paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"

# Step 12: Create emails in the format firstname.lastname@domain
paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"

# Commit changes to Git (assuming you're in a git repository)
git add "$first_names_file" "$last_names_file" "$domains_file" "$usernames_file" "$emails_file"
git commit -m "Generated user data from input file"
