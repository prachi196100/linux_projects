#!/bin/bash
#
#
#Simple Password Generator
#
#
echo "Welcome to password generator"

sleep 3s

echo "Please enter the length of the password"
read Pass_length

#  Standard- 3 bytes--> 4 character
#  	     48 bytes--> ?
# Do that for any in case of 48 like 3,6,48,100
#
# cut -c 1-$Pass_length means cut the character from 1 to pass_length

for p in $(seq 1);
do 
	openssl rand -base64 48 | cut -c1-$Pass_length
done
