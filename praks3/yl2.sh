#!/bin/bash

# Luuakse muutuja aasta ning antakse sellele väärtus 2016
aasta=1589
# Luuakse muutuja president ning antakse sellele väärtus "Kersti Kaljulaid"
president="Kersti Kaljulaid"
# Luuakse muutuja lause_keskosa ning antakse sellele väärtus ". aastal valiti Eesti presidendiks "
lause_keskosa=". aastal valiti Eesti presidendiks "

# Luuakse muutuja lause, ühendades muutujad
lause="$aasta$lause_keskosa$president"
# Väljastatakse muutuja lause väärtus 
echo "$lause"
