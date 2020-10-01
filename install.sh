#!/bin/bash
rm -Rf ~/bin ~/.bash_profile ~/.gitconfig ~/.tcshrc
mkdir -p ~/.bash.d
touch ~/.bash.d/local
ln -s `pwd`/bin ~/bin
ln -s `pwd`/.bash_profile ~/.bash_profile 
ln -s `pwd`/.gitconfig ~/.gitconfig 
ln -s `pwd`/.tcshrc ~/.tcshrc
ln -s `pwd`/.tm_properties ~/.tm_properties 
ln -s `pwd`/.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
