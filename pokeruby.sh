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
make ruby
echo "Done! You should now have a Ruby 1.0 (U) ROM in" 
echo "the pokeruby directory with SHA1 f28b6ffc97847"
echo "94a6c21a63cacf633ee5c8df1e"