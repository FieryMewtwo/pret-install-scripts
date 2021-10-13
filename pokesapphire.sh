#!/bin/bash
echo "Updating your machine as a precaution. Please wait..."
sudo apt-get update
sudo apt-get upgrade
echo "Installing devkitPro pacman. Please wait..."
sudo gdebi devkitpro-pacman.deb
sudo (dkp-)pacman -S gba-dev
echo "Installing dependencies. Please wait..."
sudo apt install libpng-dev git build-essential
echo "Finishing setup for devkitPro. Please wait..."
export DEVKITPRO=/opt/devkitpro
echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
export DEVKITARM=$DEVKITPRO/devkitARM
echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc
echo "Cloning pret repositories..."
git clone https://github.com/pret/pokeruby
git clone https://github.com/pret/agbcc
echo "Compiling agbcc..."
cd ./agbcc
./build.sh
echo "Compiling ROM....."
./install.sh ../pokeruby
cd ../pokeruby
make sapphire
echo "Done! You should now have a Sapphire 1.0 (U) ROM in" 
echo "the pokeruby directory with SHA1 3ccbbd45f8553c3646"
echo "3f13b938e833f652b793e4"