#!/bin/bash

sudo apt-get install git wget make libncurses-dev flex bison gperf python python-serial -y
mkdir $HOME/esp32
cd $HOME/esp32
wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-59.tar.gz
tar -xzf ./xtensa-esp32-elf-linux64-1.22.0-59.tar.gz
rm -rf $HOME/esp32/xtensa-esp32-elf-linux64-1.22.0-59.tar.gz
echo "export PATH=$PATH:$HOME/esp32/xtensa-esp32-elf/bin" >> $HOME/.bashrc
source $HOME/.bashrc
git clone --recursive https://github.com/espressif/esp-idf.git  esp-idf
cd $HOME/esp32/esp-idf
git submodule update --init
cd $HOME/esp32/
git clone https://github.com/espressif/esp-idf-template.git myapp
cd $HOME/esp32/myapp
echo "IDF_PATH=$HOME/esp32/esp-idf" >> $HOME/.bashrc
echo "*************************************************************"
echo " Job done! Now do a cd esp32/myapp and use make menuconfig   "
echo " then compile with    make    and write with   make flash    "
echo " See https://myesp32.blogspot.com and                        "
echo " https://myesp8266.blogspot.com for more informations        "   
echo "*************************************************************"
