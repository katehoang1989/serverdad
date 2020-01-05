#!/bin/bash

echo   "[*] Setup Zerotier"
echo   ""
echo   "  [-] Would you like to install zerotier?"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
	echo "  [*] Installing Zerotier"
	curl -s https://install.zerotier.com | sudo bash
fi
