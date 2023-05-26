#!/bin/bash

# Config user
git config user.name --global "Edson Borge"

# Config alias
git config --global --replace-all alias.s '!git status -s'
git config --global --replace-all alias.c '!git add --all && git commit -m'
git config --global --replace-all alias.l '!git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
git config --global --replace-all alias.f '!git fetch --all --prune'
git config --global --replace-all alias.ch '!git checkout'

