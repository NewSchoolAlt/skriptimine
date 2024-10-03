#!/bin/bash
echo " "

echo " "

# Lisame spinneri ootamise animatsiooni
echo -"Töötlen, palun oota"
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
    input_file=$(find . -type f | fzf --header="Vali fail ja vajuta Enter" --preview="batcat | /usr/games/lolcat ")
    if [ -z "$input_file" ]; then
        echo "Faili ei valitud, väljun."
        exit 1
    fi
else
    input_file="$1"
fi

#Teeme output katalooge
mkdir -p "$output_dir"

#Kasutades awk käsku võtame input faili, lõikane sealt ülejäänud jama ära, jätame alles ainult eesnimed, ning salvestame Määratud faili
cut -d',' -f2 "$input_file" | tr '[:upper:]' '[:lower:]' | awk -F';' '{print $1}' | awk '{gsub(/[0-9]*-.*|^[ \t]*|[ \t]*$/, ""); print}' > "$first_names_file"

#Sama loogikaga on ka perenimede fail ja domeenide fail koostatud, ei viitsi pikki kommentaare panna
cut -d',' -f1 "$input_file" | tr '[:upper:]' '[:lower:]' | awk '{gsub(/^[ \t]*|[ \t]*$/, ""); print}' > "$last_names_file"
cut -d'-' -f2 "$input_file" | tr '[:upper:]' '[:lower:]' | awk '{gsub(/^[ \t]*|[ \t]*$/, ""); print}' > "$domains_file"


#Loob kasutajanimed ja e-mailid failid
paste -d"." "$first_names_file" "$last_names_file" > "$usernames_file"
paste -d"@" "$usernames_file" "$domains_file" > "$emails_file"



# Lisame spinneri ootamise animatsiooni
echo -"töötlen valikut, palun oota"
echo " "
spin='/-\|'
i=0
while [ "$i" -lt 10 ]; do  # Muuda 10 soovitud ooteaja järgi
    printf "\r%s" "${spin:i++%${#spin}:1}"  # Kuvab spinneri
    sleep 0.22  # Ooteaeg
done
echo -e "\r"  # Tühjendab spinneri rea

#Kuvame kasutajale loodud failide nimed
echo "Eesnimed: $first_names_file"
echo "Perekonnanimed: $last_names_file"
echo "Domeenid: $domains_file"
echo "Kasutajatunnused: $usernames_file"
echo "E-mailid: $emails_file"


# Küsi kasutajalt, kas ta soovib vaadata genereeritud faile
while true; do
    read -p "Kas soovite vaadata genereeritud faile? (jah/ei): " answer
    if [[ "$answer" == "jah" ]]; then
        # Kasutame fzf, et valida fail
        selected_file=$(printf "$first_names_file\n$last_names_file\n$domains_file\n$usernames_file\n$emails_file" | fzf --header="Vali fail ja vajuta Enter")
        if [ -n "$selected_file" ]; then
            # Kasutame batcat, et kuvada faili sisu
            batcat "$selected_file"
            read -p "Vajutage Enter, et jätkata..."  # Ootab kasutaja sisestust
        fi
    else
        break
    fi
done









































































echo "master hackerman type shit tuleb kohe"
# Lisame spinneri ootamise animatsiooni
echo  "töötlen puhastust, palun oota!!"
spin='/-\|'
i=0
while [ "$i" -lt 10 ]; do  # Muuda 10 soovitud ooteaja järgi
    printf "\r%s" "${spin:i++%${#spin}:1}"  # Kuvab spinneri
    sleep 0.6  # Ooteaeg
done
echo -e "\r"  # Tühjendab spinneri rea
#Fnacy stuff mis mõtlesin, et panen juurde kuna olen masterhackerman yes yes
echo " "
echo " "
echo "Töötlemine lõpetatud!"
echo "===================="















































































































figlet "made by OLEV!" | /usr/games/lolcat 
