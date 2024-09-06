#!/bin/bash
# See skript väljastab praeguse kuupäeva ja kellaaja erinevates formaatides

# Väljastab praeguse kuupäeva ja kellaaja täisformaadis
echo "Today is $(date +"%A, %B %d, %Y")"

# Väljastab praeguse kellaaja tunnid ja minutid
echo "Time is $(date +"%H:%M")"

# Väljastab kalendri praeguse kuu kohta
echo -e "\nCalendar of $(date +"%B %Y")"
cal
