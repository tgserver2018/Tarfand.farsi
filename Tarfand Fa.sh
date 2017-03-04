#!/usr/bin/env bash

cd $HOME/Tarfand.farsi

install() {
	    cd tg
		https://t.me/SaMaN_SaNstar2017

sudo pip3 install redis

sudo service redis-server restart

sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt-get update

sudo apt-get upgrade

sudo apt-get dist-upgrade


sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev

cd $HOME

git clone https://github.com/tgserver2018/Tarfand.farsi.git

cd Tarfand.farsi

 chmod +x Tarfand Fa.sh

./Tarfand Fa.sh install

./Tarfand Fa.sh

+98......

---------------------------

@userinfobot
}

if [ "$1" = "install" ]; then
  install
  else

if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
fi
   echo -e "\033[38;5;208m"
   echo -e "     > best anti spam source SaMaN_SaNstaR"
   echo -e "                                              \033[0;00m"
   echo -e "\e[36m"
   ./tg/tgcli -s ./bot/bot.lua $@
fi

