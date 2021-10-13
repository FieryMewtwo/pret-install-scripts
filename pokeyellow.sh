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
echo "Cloning and assembling pokeyellow... Please wait"
git clone https://github.com/pret/pokeyellow
cd pokeyellow
make
echo "Done! If everything went according to plan, you should have a Pokemon Yellow ROM in the"
echo "pokeyellow directory with SHA1 cc7d03262ebfaf2f06772c1a480c7d9d5f4a38e1 (for the final game)"
echo "or SHA1 d44e96eddfbdad633cbe4e6e64915e9e198974b0 (for the YELLOWMONS.gb debug build)