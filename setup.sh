#!/usr/bin/env bash

set -e

echo "🚀 Starting Linux setup..."

sudo apt update && sudo apt upgrade -y

echo "📦 Installing core tools..."
sudo apt install -y \
  git \
  curl \
  wget \
  htop \
  build-essential \
  python3 \
  python3-pip \
  vlc

echo "🐳 Installing Docker..."
sudo apt install -y docker.io docker-compose
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER

echo "Install flatpak"
sudo apt install flatpak -y

echo "Install filezilla"
sudo snap install --edge filezilla

echo "Install Snap-Store"
sudo snap install snap-store

echo "Install Chromium"
sudo snap install chromium

echo "🌍 Installing Google Chrome..."
wget -qO /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/chrome.deb

echo "Install SurfShark"
sudo snap install surfshark

echo "Install VLC"
sudo snap install vlc

echo "Install Spotify"
sudo snap install spotify

echo "🧹 Cleaning up..."
sudo apt autoremove -y


echo "✅ All done! Reboot recommended."
