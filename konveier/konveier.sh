#!/bin/bash
echo " "
fastfetch
echo " "

# Lisame spinneri ootamise animatsiooni
echo -"Ootan, palun oota"
echo " "
spin='/-\|'
i=0
while [ "$i" -lt 10 ]; do  # Muuda 10 soovitud ooteaja järgi
    printf "\r%s" "${spin:i++%${#spin}:1}"  # Kuvab spinneri
    sleep 0.2  # Ooteaeg
done
echo -e "\r"  # Tühjendab spinneri rea


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

if [ $# -ne 1 ]; then
    echo "Vali inimesed_fail fzf abil (kasuta nooleklahve ja Enterit):"
    terminal_width=$(tput cols)  # Uus rida, et saada terminali laius
    input_file=$(find . -type f | fzf --header="Vali fail ja vajuta Enter" --preview="cat {} | toilet --gay --width=$terminal_width")  # Uus rida, et kuvada värviline ASCII kunst
    if [ -z "$input_file" ]; then
        echo "Faili ei valitud, väljun."
        exit 1
    fi
else
    input_file="$1"
fi

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



# Lisame spinneri ootamise animatsiooni
echo -"Ootan, palun oota"
echo " "
spin='/-\|'
i=0
while [ "$i" -lt 10 ]; do  # Muuda 10 soovitud ooteaja järgi
    printf "\r%s" "${spin:i++%${#spin}:1}"  # Kuvab spinneri
    sleep 0.2  # Ooteaeg
done
echo -e "\r"  # Tühjendab spinneri rea

#Kuvame kasutajale loodud failide nimed
echo "Eesnimed: $first_names_file"
echo "Perekonnanimed: $last_names_file"
echo "Domeenid: $domains_file"
echo "Kasutajatunnused: $usernames_file"
echo "E-mailid: $emails_file"

















































































echo "master hackerman type shit tuleb kohe"
# Lisame spinneri ootamise animatsiooni
echo  "Ootan, palun oota"
spin='/-\|'
i=0
while [ "$i" -lt 10 ]; do  # Muuda 10 soovitud ooteaja järgi
    printf "\r%s" "${spin:i++%${#spin}:1}"  # Kuvab spinneri
    sleep 0.2  # Ooteaeg
done
echo -e "\r"  # Tühjendab spinneri rea
#Fnacy stuff mis mõtlesin, et panen juurde kuna olen masterhackerman yes yes
echo " "
echo " "
echo "Töötlemine lõpetatud!"
echo "===================="















































































































figlet "made by OLEV!" 
