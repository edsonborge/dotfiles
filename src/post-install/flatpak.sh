#!/bin/bash

# Install Flatpak
sudo apt install -y flatpak

# Postman
flatpak install -y flathub com.getpostman.Postman

# Bitwarden
flatpak install -y flathub com.bitwarden.desktop

# Slack
flatpak install -y flathub com.slack.Slack

# Teams
flatpak install -y flathub com.github.IsmaelMartinez.teams_for_linux

# Discord
flatpak install -y flathub com.discordapp.Discord

# VLC
flatpak install -y flathub org.videolan.VLC
