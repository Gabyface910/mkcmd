#!/bin/bash

if [ "$1" == "-e" ]; then
	if [ -z "$2" ]; then
		echo "mkcmd: can't make empty strings into commands"
		exit 1
	fi
	if [ -d "/usr/local/bin/$2" ]; then
		sudo nano /usr/local/bin/$2
		exit 0
	else
		echo "mkcmd: no command found to match query '$2' "
		exit 1
	fi
if [ -z "$1" ]; then
	echo "mkcmd: can't make empty strings into commands"
	exit 1
elif [ -d "/usr/local/bin/$1" ]; then
	echo "mkcmd: command already exists. Try mkcmd -e to edit a command."
	exit 1
fi
nano $1.sh
sudo chmod +x $1.sh
sudo mv $1.sh /usr/local/bin/$1
echo "Created executable command '$1'"
exit 0
