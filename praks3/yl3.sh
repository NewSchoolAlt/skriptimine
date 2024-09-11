#!/bin/bash

# Küsi kasutajalt ainepunktide arvu (täisarv)
read -p "Sisesta ainepunktide arv: " ainepunktid

# Küsi kasutajalt nädalate arvu (täisarv)
read -p "Sisesta nädalate arv: " nadalad

# Arvutame kogu ajakulu (EAP * 26 tundi)
aeg=$(echo "$ainepunktid * 26" | bc)

# Arvutame ühe nädala ajakulu
ajakulu=$(echo "scale=2; $aeg / $nadalad" | bc)

# Ümardame ajakulu ülespoole
umbes_ajakulu=$(echo "($ajakulu + 0.9)/1" | bc)

# Väljastame tulemuse ekraanile
echo "nädala eeldatav ajakulu on $umbes_ajakulu tundi."
