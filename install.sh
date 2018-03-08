#!/bin/bash
rm -Rf ~/bin ~/.bash_profile ~/.gitconfig ~/.tcshrc
mkdir -p ~/.bash.d
touch ~/.bash.d/local
ln -s `pwd`/bin ~/bin
ln -s `pwd`/.bash_profile ~/.bash_profile 
ln -s `pwd`/.gitconfig ~/.gitconfig 
ln -s `pwd`/.tcshrc ~/.tcshrc
ln -s `pwd`/.tm_properties ~/.tm_properties 