#!/system/bin/sh
clear
pkg update -y
pkg upgrade -y
pkg install figlet
clear
echo -e "\e[32m"
echo ""
echo "This is a tool to add lock to termux"
echo -e "\e[11m"
clear
echo ""
echo "Enter Your Name"
read username
clear
echo ""
echo "Enter Password"
read password
echo "$username:$password">>/data/data/com.termux/files/usr/etc/user.txt
rm $HOME/../usr/etc/motd
rm $HOME/../usr/etc/bash.bashrc
cp bash.bashrc $HOME/../usr/etc/
clear
figlet DONE
echo "Restart your Terminal"
