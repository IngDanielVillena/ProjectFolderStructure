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
   mkdir ${carpeta}/app/resource/static/
   mkdir ${carpeta}/app/resource/static/css/
   mkdir ${carpeta}/app/resource/static/imgs/
   mkdir ${carpeta}/app/resource/static/js/
   mkdir ${carpeta}/app/resource/static/vendor/

   mkdir ${carpeta}/app/src/
   mkdir ${carpeta}/app/src/component/
   mkdir ${carpeta}/app/src/config/
   mkdir ${carpeta}/app/src/controller/
   mkdir ${carpeta}/app/src/converter/
   mkdir ${carpeta}/app/src/dao/
   mkdir ${carpeta}/app/src/entity/
   mkdir ${carpeta}/app/src/helper/
   mkdir ${carpeta}/app/src/middleware/
   mkdir ${carpeta}/app/src/model/
   mkdir ${carpeta}/app/src/repository/
   mkdir ${carpeta}/app/src/service/
   mkdir ${carpeta}/app/src/service/impl/
   mkdir ${carpeta}/app/src/test/
   mkdir ${carpeta}/app/src/view/
   mkdir ${carpeta}/app/src/view/event/
   mkdir ${carpeta}/app/src/view/fragment/

   mkdir ${carpeta}/base/
   mkdir ${carpeta}/test/
   touch ${carpeta}/LICENSE
   touch ${carpeta}/README.md

done

else
    echo "Se ha alcanzado el límite de tiempo."
fi
