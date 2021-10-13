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
echo "Cloning and assembling pokegold... Please wait"
git clone https://github.com/pret/pokegold
cd pokegold
make silver
echo "Done! If everything went according to plan, you should have a Pokemon Silver (U) ROM"
echo "in the pokegold directory with SHA1 49b163f7e57702bc939d642a18f591de55d92dae"