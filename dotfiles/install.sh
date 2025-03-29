#!/usr/bin/env bash

mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/ranger/plugins

ln -sf "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/.config/nvim/init.lua" ~/.config/nvim/init.lua
ln -sf "$(pwd)/.config/nvim/lua/plugins.lua" ~/.config/nvim/lua/plugins.lua
ln -sf "$(pwd)/.config/ranger/rc.conf" ~/.config/ranger/rc.conf

# Bootstrap lazy.nvim
git clone https://github.com/folke/lazy.nvim ~/.config/nvim/lazy.nvim --depth=1

# Bootstrap TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

