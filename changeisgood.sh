#!/bin/bash

echo -e "\033[0;32mUpdating status on github...\033[0m"

cd /home/tarrafa/botaobiarra

if [ "$1" == aberto ];	then
	echo "tarrafa aberto!"
	cp TarrafaTemGente.png status.png
else 
	echo "tarrafa fechado!"
	cp TarrafaNaoTemGente.png status.png
fi

git add status.png
git status
