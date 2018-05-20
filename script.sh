#!/bin/bash

echo "Bash script."

if read -t 60 -p "What is the name of the project? " projectName; then

mkdir ~/$projectName/

find ~/$projectName/ -type d |
while read carpeta
do

   mkdir ${carpeta}/app/

   mkdir ${carpeta}/app/dist/
   mkdir ${carpeta}/app/dist/app/
   mkdir ${carpeta}/app/dist/base/
   mkdir ${carpeta}/app/dist/resource/

   mkdir ${carpeta}/app/docs/
   touch ${carpeta}/app/docs/FAQ.md
   touch ${carpeta}/app/docs/MISC.md
   touch ${carpeta}/app/docs/TOC.md
   touch ${carpeta}/app/docs/USAGE.md
   
   mkdir ${carpeta}/app/logs/
   mkdir ${carpeta}/app/resource/
   mkdir ${carpeta}/app/src/
   mkdir ${carpeta}/base/
   mkdir ${carpeta}/test/
   touch ${carpeta}/LICENSE
   touch ${carpeta}/README.md

done

else
    echo "Se ha alcanzado el límite de tiempo."
fi
