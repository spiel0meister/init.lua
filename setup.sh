#!/usr/bin/bash

exit_if_fail() {
    if [[ $? != 0 ]]; then
        exit $?
    fi
}

apt install unzip > /dev/null

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
    exit_if_fail
    unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono > /dev/null
    exit_if_fail
    fc-cache -f -v /dev/null
    rm -rf JetBrainsMono.zip
    echo "Installed JetBrainsMono Nerd Font"
fi

# Install Rust
if [ ! -f $HOME/.cargo/bin/rustc ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    echo "Installed Rust"
else
    echo "Rust already installed"
fi

apt install cargo > /dev/null

# Install Haskell
apt install build-essential curl libffi-dev libffi8 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5 > /dev/null

if [ ! -f $HOME/.ghcup/bin/ghc ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    echo "Installed Haskell"
else
    echo "Haskell already installed"
fi

# Install gcc
apt install gcc > /dev/null

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

echo "Install Neovide? (y/N) "
read -r ANSWER

if [[ $ANSWER == "y" ]]; then
    cargo install --git https://github.com/neovide/neovide
fi
