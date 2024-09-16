   #!/bin/bash

   # Arvuta 10 esimese paarisarvude summa
   sum=0
   for ((i=1; i<=10; i++)); do
       if ((i % 2 == 0)); then
           sum=$((sum + i))
       fi
   done

   echo "Arvude vahemikus 1 kuni 10 (kaasaarvutud) paarisarvude summa on: $sum"
