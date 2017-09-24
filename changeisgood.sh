#!/bin/bash

echo -e "\033[0;32mUpdating status on github...\033[0m"

cd /home/tarrafa/botaobiarra

eval "$(ssh-agent -s)"
ssh-add botaobiarra

if [ "$1" == aberto ];	then
	echo "tarrafa aberto!"
	cp -v TarrafaTemGente.png status.png
else 
	echo "tarrafa fechado!"
	cp -v TarrafaNaoTemGente.png status.png
fi

git add status.png
git status

# Commit changes.
if [ $# -eq 1 ]
  then msg="[`date`] tarrafa $1"
else
  msg="arguments not clear"
fi

git commit -m "$msg"

git push origin master
