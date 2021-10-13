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
echo "Cloning and assembling pokecrystal... Please wait"
git clone https://github.com/pret/pokecrystal
cd pokecrystal
make
echo "Done! If everything went according to plan, you should have a Pokemon Crystal (U) ROM"
echo "in the pokecrystal directory with SHA1 f4cd194bdee0d04ca4eac29e09b8e4e9d818c133 (for "
echo "Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc), SHA1 f2f52230b536214ef7c9924f48339"
echo "2993e226cfb (for Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc), or SHA1 a0fc810"
echo "fd4e124434f7be2c989ab5b5892ddf36 (for Pokemon - Crystal Version (A) [C][!].gbc)"