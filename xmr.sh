#!/bin/bash
# FAT 8/06/2025
#
#-----FAT WAREZ ANSI/ASCII ART-----
#
echo ""
echo -e "\033[0;32m                 \033[31m·\033[32m▄▄▄ ▄▄▄\033[2;31m·\033[0;32m▄▄▄▄▄\033[0m"
echo -e "\033[0;32m                \033[1;0m.\033[0;32m▐▄▄\033[1;31m·\033[0;32m▐█ ▀█\033[36m•\033[0;32m██\033[0m"
echo -e "\033[0;32m                 ██\033[2;31m▪\033[0;32m ▄█▀▀█ ▐█\033[1;34m.\033[0;31m▪\033[0m"
echo -e "\033[0;32m                 ██▌\033[1;36m.\033[0;32m▐█ \033[31m▪\033[0;32m▐▌▐█▌\033[1;31m·\033[0m"
echo -e "\033[0;32m                \033[2;31m▪\033[0;32m▀▀▀  ▀  ▀ ▀▀▀\033[0m"
echo -e "\033[0;32m         ▄▄▌ ▐ ▄▌ ▄▄▄\033[0;34m·\033[0;32m ▄▄▄  ▄▄▄ \033[1;31m.\033[2;31m·\033[0;32m▄▄▄▄\033[0;31m•\033[0m"
echo -e "\033[0;32m         ██\033[0;31m·\033[0;32m █▌▐█▐█ ▀█ ▀▄ █\033[0;31m·\033[0;32m▀▄\033[1;36m.\033[0;32m▀\033[2;31m·\033[0;31m▪\033[0;32m▀\033[0;0m·.\033[0;32m█▌\033[0m"
echo -e "\033[0;32m         ██\033[0;36m▪\033[0;32m▐█▐▐▌▄█▀▀█ ▐▀▀▄ ▐▀▀\033[1;34m▪\033[0;32m▄▄█▀▀▀\033[0;31m•\033[0m"
echo -e "\033[0;32m         ▐█▌██▐█▌▐█ \033[2;31m▪\033[0;32m▐▌▐█\033[0;36m•\033[0;32m█▌▐█▄▄▌█▌\033[1;36m▪\033[0;32m▄█▀\033[0m"
echo -e "\033[0;32m          ▀▀▀▀ ▀\033[1;31m▪\033[0;32m ▀  ▀ \033[2;34m.\033[0;32m▀  ▀ ▀▀▀ \033[0;31m·\033[0;32m▀▀▀ \033[1;31m•\033[0m"
echo ""
sleep .3
#
#-----XMR ANSI/ASCII ART-----
#
#change color to orange
echo -e "\033[1;33m"
echo "     █████ █████ ██████   ██████ ███████████  "
echo "    ░░███ ░░███ ░░██████ ██████ ░░███░░░░░███ "
echo "     ░░███ ███   ░███░█████░███  ░███    ░███ "
echo "      ░░█████    ░███░░███ ░███  ░██████████  "
echo "       ███░███   ░███ ░░░  ░███  ░███░░░░░███ "
echo "      ███ ░░███  ░███      ░███  ░███    ░███ "
echo "     █████ █████ █████     █████ █████   █████"
echo "    ░░░░░ ░░░░░ ░░░░░     ░░░░░ ░░░░░   ░░░░░ "
sleep .3
echo -e "\033[0;33m"
echo "░█▄█░▀█▀░█▀█░▀█▀░█▀█░█▀▀░░░█▀▀░█▀▀░█▀▄░▀█▀░█▀█░▀█▀"
echo "░█░█░░█░░█░█░░█░░█░█░█░█░░░▀▀█░█░░░█▀▄░░█░░█▀▀░░█░"
echo "░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░░░▀░"
echo -e "\033[2;33m                          v0.5 - 7/28/25 - FAT"
sleep 1
#
#-----[XMR / Wallet - Address SECTION]---------------------------------------
#
#-----LOAD/SAVE Miner XMR Address-----
#
# Check if the file exists before loading
if [ -e xmr.addr ]; then
  echo "xmr.addy exists!, Loading XMR Address..."
  # Load variables from the file
  xmr=$(cat xmr.addr)
  # Use the loaded variables
  echo ""
  echo -e "\033[0;32mXMR Address Loaded!"
  echo -e "\033[0m$xmr\033[0;32m"
  sleep .1
else
  #state error
  echo ""
  echo -e "\033[0;31mxmr.addy does not exist!"
  echo -e "No XMR address is saved!\033[0m"
  sleep .1
fi
#
#-----Define XMR Address-----
#
echo ""
echo -e "\033[0;32mEnter your XMR Wallet Address for the mining pool, and press enter: \033[0m"
read -e -p "--->  " -t 30 -i $xmr xmraddress
sleep .1
echo -e "\033[1;32mYou entered: $xmraddress\033[0m"
sleep .1
#save miner name
echo $xmraddress > xmr.addr
sleep .1
#confirm save
echo -e "\033[2;32mXMR Wallet Address '$xmraddress' has been saved to xmr.addr\033[0m"
sleep .1
#set text color back to default
echo -e "\033[0m"
#
#-----[MINER / HOST - NAME SECTION]---------------------------------------
#
#Use the hostname as the miner name
echo -e "\033[1;34mUsing computer's hostname for Miner's name.\033[0m"
sleep .1
_HOST=$(hostname) || true
if [ "$_HOST" ]; then
  printf "%b" "\e[1;34mYour Hostname is:\e[1;36m $_HOST\e[0m \n"
  echo -e "\033[1;34mUsing\033[1;36m $_HOST\e[34m as your miner name\033[0m"
  XNAME=$_HOST
  sleep .1
else
echo -e "\033[1;34mThere was an error detecting your hostname.\033[0m"
exit 1
fi
#
#-----[XMRIG SECTION]---------------------------------------
#
echo ""
echo -e "\033[32m How would you like to proceed?"
echo "[1] - Hashvault"
echo "[2] - MoneroOcean"
echo "[3] - Abort & Exit"
echo ""
sleep .1
echo "Enter a number [1-3], then press ENTER..."
echo -e "\033[0;35m"

read -e -p "--->  " -t 10 -i "1" choice

# Execute the corresponding command based on user input
case "$choice" in
    1)
        sleep .1
        echo -e "\033[0;36m"
        echo "░█░█░█▀█░█▀▀░█░█░█░█░█▀█░█░█░█░░░▀█▀"
        echo "░█▀█░█▀█░▀▀█░█▀█░▀▄▀░█▀█░█░█░█░░░░█░"
        echo "░▀░▀░▀░▀░▀▀▀░▀░▀░░▀░░▀░▀░▀▀▀░▀▀▀░░▀░"
        echo -e "\033[0m"
        sleep 1
        echo $xmr
        sudo /home/frank/xmrig/build/./xmrig --url pool.hashvault.pro:80 --user $xmr --pass "$XNAME" --donate-level 1 --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14 --randomx-init=3 --threads=3 --cpu-affinity=0xE --cpu-priority=3 --huge-pages-jit --randomx-1gb-pages

        ;;
    2)
        sleep .1
        echo -e "\033[0;36m"
        echo "░█▄█░█▀█░█▀█░█▀▀░█▀▄░█▀█░█▀█░█▀▀░█▀▀░█▀█░█▀█░"
        echo "░█░█░█░█░█░█░█▀▀░█▀▄░█░█░█░█░█░░░█▀▀░█▀█░█░█░"
        echo "░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░▀░"
        echo -e "\033[0m"
        sleep 1
        sudo /home/frank/xmrig-mo/build/./xmrig --url gulf.moneroocean.stream:80 --user $xmr --pass "$XNAME" --randomx-init=3 --threads=3 --cpu-affinity=0xE --cpu-priority=3 --huge-pages-jit --randomx-1gb-pages
        ;;
    3)
        sleep .1
        echo -e "\033[0;31m"
        echo ""
        echo "░█▀▀░█░█░▀█▀░▀█▀░▀█▀░█▀█░█▀▀";
        echo "░█▀▀░▄▀▄░░█░░░█░░░█░░█░█░█░█";
        echo "░▀▀▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀";
        echo ""
        echo -e "\033[0m"
        sleep 1
        exit 0
        ;;
    *)
        echo -e "\033[0;31m"
        echo "Invalid input. Please enter a number between 1 and 3 next time."
        sleep 2
        echo ""
        echo "░█▀▀░█░█░▀█▀░▀█▀░▀█▀░█▀█░█▀▀";
        echo "░█▀▀░▄▀▄░░█░░░█░░░█░░█░█░█░█";
        echo "░▀▀▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀";
        echo ""
        echo -e "\033[0m"
        sleep 1
        exit 0
        ;;
 esac
#---!-[The End]-!---
