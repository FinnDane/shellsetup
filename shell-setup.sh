#!/bin/sh
sudo apt install zsh git

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

curl "${BASEURL}/.zshrc" -O ~/.zshrc
curl "${BASEURL}/shell-mommy.sh" -O ~/shell-mommy.sh

#download custom stuff
curl "{BASEURL}/robbyrussellASCII.zsh-theme" -O ~/.oh-my-zsh/custom/themes/robbyrussellASCII.zsh-theme
git clone https://github.com/FinnDane/nobitches.git ~/.oh-my-zsh/custom/plugins/nobitches

chsh -s $(which zsh)
