#!/bin/bash
echo "Installing updates... Please wait"
sudo apt-get update -y
sudo apt-get upgrade -y
echo "Installing dependencies... Please wait"
sudo apt install make gcc git pkg-config bison libpng-dev
echo "Setting up gbdev/rgbds... Please wait"
git clone https://github.com/gbdev/rgbds/
git checkout v0.5.1
make
sudo make install
echo "Cloning and assembling pokered... Please wait"
git clone https://github.com/pret/pokered
cd pokered
make 
echo "Done! If everything went according to plan, you should have a Pokemon Red ROM in the pokered directory"
echo "with SHA1 ea9bcae617fdf159b045185467ae58b2e4a48b9a (for Red), SHA1 d7037c83e1ae5b39bde3c30787637ba1d4c48ce2"
echo "for Blue, and SHA1 5b1456177671b79b263c614ea0e7cc9ac542e9c4 for BLUEMONS.gb (a debug build). 