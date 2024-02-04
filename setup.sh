#!/usr/bin/bash

apt install unzip

# Install packer
if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
    git clone --depth=1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# Install JetBrainsMono Nerd Font
if [ ! -d ~/.local/share/fonts ]; then
    mkdir -p ~/.local/share/fonts
fi

if [ ! -d ~/.local/share/fonts/JetBrainsMono ]; then
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
    unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
    fc-cache -f -v
    rm -rf JetBrainsMono.zip
fi

# Install Rust
if [ ! -f $HOME/.cargo/bin/rustc ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

apt install cargo

# Install Haskell
apt install build-essential curl libffi-dev libffi8 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

if [ ! -f $HOME/.ghcup/bin/ghc ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi

# Install gcc
apt install gcc

# Install NodeJS and Typescript
if [ ! -f /home/zan-sovic/.local/share/fnm/fnm ]; then
    curl -fsSL https://fnm.vercel.app/install | bash
fi

fnm install --lts

npm i -g typescript

# Install Neovide
apt install -y curl \
    gnupg ca-certificates git \
    gcc-multilib g++-multilib cmake libssl-dev pkg-config \
    libfreetype6-dev libasound2-dev libexpat1-dev libxcb-composite0-dev \
    libbz2-dev libsndio-dev freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev \
    libxcursor-dev

if [ ! -d /home/zan-sovic/.cargo/bin/neovide ]; then
    cargo install --git https://github.com/neovide/neovide
fi
