#!/bin/bash

# Config user
ln -s ~/.dotfiles/src/post-install/git/.gitconfig ~/.gitconfig

mkdir -p ~/workspace/personal

ln -s ~/.dotfiles/src/post-install/git/.gitconfig-personal ~/workspace/personal/.gitconfig-personal

mkdir -p ~/workspace/work

ln -s ~/.dotfiles/src/post-install/git/.gitconfig-work ~/workspace/work.gitconfig-work

# Config alias
git config --global --replace-all alias.s '!git status -s'
git config --global --replace-all alias.c '!git add --all && git commit -m'
git config --global --replace-all alias.l '!git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
git config --global --replace-all alias.f '!git fetch --all --prune'

