#!/bin/bash
# Skript, mis tervitab kasutajat vastavalt kellaajale ja kuvab praeguse aja

# Saame kasutaja nime
USER_NAME=$(whoami)

# Saame praeguse aja
CURRENT_TIME=$(date +"%H")

# Tervitame kasutajat vastavalt kellaajale
if [ $CURRENT_TIME -ge 0 ] && [ $CURRENT_TIME -lt 6 ]; then
    GREETING="Head ööd"
elif [ $CURRENT_TIME -ge 6 ] && [ $CURRENT_TIME -lt 12 ]; then
    GREETING="Tere hommikust"
elif [ $CURRENT_TIME -ge 12 ] && [ $CURRENT_TIME -lt 18 ]; then
    GREETING="Tere päevast"
else
    GREETING="Tere õhtust"
fi

echo "$GREETING, $USER_NAME! Kell on $(date +"%H:%M")."
