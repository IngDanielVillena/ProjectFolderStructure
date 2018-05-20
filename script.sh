#!/bin/bash

echo "Bash script."

if read -t 60 -p "What is the name of the project? " projectName; then

mkdir ~/$projectName/
