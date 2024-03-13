# init.lua

My **Neovim** configuration using [packer.nvim](https://github.com/wbthomason/packer.nvim) as the plugin manager.

## Quick Start
To install, simply clone this repo into the Neovim config directory in your user directory.

```bash
git clone --depth=1 https://github.com/spiel0meister/init.lua.git ~/.config/nvim
```

## Dependencies

### Packer

Install packer:
```bash
git clone --depth=1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### JetBrains Mono

This config uses the *JetBrains Mono* font, therefore it must be installed from here: <https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip>.

## Language Servers

### Rust Analyzer

Install Rust:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### pywright

Install [Python](https://www.python.org/).

### HSL (Haskell)

Install [Haskell](https://www.haskell.org/ghcup/).

### tsserver

Install [NodeJS](https://nodejs.org/en/download/package-manager). Then, install Typescript:
```bash
npm i -y typescript
```

### clangd

Have gcc installed.

## GUI

I use [Neovide](https://github.com/neovide/neovide)[^1] to run Neovim in a GUI.

[^1]: Installation: <https://neovide.dev/installation.html>
