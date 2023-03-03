#!/bin/sh
sudo apt install zsh git

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

curl -fsSL "${BASEURL}/.zshrc" -o ~/.zshrc
curl -fsSL "${BASEURL}/shell-mommy.sh" -o ~/shell-mommy.sh

#download custom stuff
curl -fsSL "${BASEURL}/robbyrussellASCII.zsh-theme" -o ~/.oh-my-zsh/custom/themes/robbyrussellASCII.zsh-theme
git clone https://github.com/FinnDane/nobitches.git ~/.oh-my-zsh/custom/plugins/nobitches

chsh -s $(which zsh)
