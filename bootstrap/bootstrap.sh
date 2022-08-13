#!/bin/bash

echo ¨Starting Bootstrap¨

sudo apt update && sudo apt upgrade -y

cp -rvf ssh ~/.ssh

chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_ed25519.pub
chmod 600 ~/.ssh/id_ed25519

echo -e ¨Setting up workspace¨
mkdir ~/workspace

cd ~/workspace

git clone git@github.com:adids93/bootstrap.git

cd bootstrap

rm -f ~/.zshrc
rm -f ~/.zshrc.pre-oh-my-zsh
rm -f ~/.bashrc

ln -s ~/workspace/bootstrap/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/workspace/bootstrap/dotfiles/zsh/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh
ln -s ~/workspace/bootstrap/dotfiles/.bashrc ~/.bashrc

chmod +x apt.sh
chmod +x common.sh

./apt.sh
./common.sh