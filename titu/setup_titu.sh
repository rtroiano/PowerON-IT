#!/bin/bash
clear
echo "This script will deploy a new docker server to host TiTu."   
echo "If you do not know what TiTu is, please type no to exit back to the terminal"
read -p "Do you want to continue? (yes/no) " answer

if [[ "$answer" == "yes" ]]; then
    echo "Continuing with script execution."
    echo "Installing Packages via apt-get"
    sudo apt install $(cat pkglist_auto.lst)
    sudo apt install $(cat pkglist_manual.lst)
    echo "Done installing packages via apt-get"
    sudo apt-get update
    sudo apt-get upgrade
    echo "Checking to see if 22.04 is installed"
    sudo do-release-upgrade


elif [[ "$answer" == "no" ]]; then
    echo "Exiting script."

    
    
    
    exit 0
else
    echo "Invalid input. Please enter either 'yes' or 'no'."
    exit 1
fi

