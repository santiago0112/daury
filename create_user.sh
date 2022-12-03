#! /usr/bin/bash
#! /usr/bin/bash

echo "¿Cuál es su nombre de usuario previsto?"
read  username
echo "cual es tu contrasena"
read -s password

#A user can be passed in as a command line argument
echo "$username user account being created."

#A user is created with the name of the command line argument
sudo useradd -m $username

#A password can be parsed as a command line argument.
sudo chpasswd <<< $username:$password

#A message of successful account creaction is desplayed
echo "The account for $username has successfully been created"

