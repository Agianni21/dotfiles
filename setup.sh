#!/usr/bin/env bash
# Script to setup my dotfiles in a Linux machine

# TODO
# + Check if nvim is already the default editor

work_dir="$(pwd)"

# Set nvim as default editor
# For bash
echo "export EDITOR=nvim" >> ${HOME}/.bashrc
# For fish
echo "set -X EDITOR nvim" >> ${HOME}/.config/fish/config.fish


# Setup vim config (neovim)
if [[ ! -d ~/.config/nvim ]]; then
    mkdir ~/.config/nvim
fi
if [[ -e ~/.config/nvim/init.vim ]]; then
    rm ~/.config/nvim/init.vim
fi
ln ${work_dir}/.vimrc ~/.config/nvim/init.vim   

# Setup Vundle as vim plugin manager and install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall

# Setup tmux config
if [[ -e ~/.tmux.conf ]]; then
    rm ~/.tmux.conf
fi
ln ${work_dir}/.tmux.conf ~/.tmux.conf
