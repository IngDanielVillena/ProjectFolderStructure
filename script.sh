#!/bin/bash

echo "Bash script."

if read -t 60 -p "What is the name of the project? " projectName; then

mkdir ~/$projectName/

find ~/$projectName/ -type d |
while read carpeta
do

done

else
    echo "Se ha alcanzado el límite de tiempo."
fi
