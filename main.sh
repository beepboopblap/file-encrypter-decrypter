#!/usr/bin/bash


function load {
	
	echo -ne '#####                     (33%)\r'
	sleep 1
	echo -ne '#############             (66%)\r'
	sleep 1
	echo -ne '#######################   (100%)\r'
	echo -ne '\n'

}



if [ "$1" == "-e" ] 
then
	echo " --- File Encrypter ---"
	echo
	echo
	read -p "Enter Filename (with extension): " fileinput

	gpg -c $fileinput

	echo "File Encrypted!"

	echo "Removing Original File..."
	load
	rm $fileinput
	echo "Original File Removed!"

elif [ "$1" == "-d" ]
then 
	echo "--- File Decrypter ---"
	read -p "Enter Filename (with extension): " fileinput

	gpg $fileinput

	load

	echo "File Decrypted!"

fi
