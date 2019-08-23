#!/usr/bin/env bash
# Script to setup my dotfiles in a Linux machine

# TODO
# + Check if nvim is already the default editor

work_dir="$(pwd)"
setup_plugins="false"

### Setup configs ###
## Nvim
if [[ ! -d ~/.config/nvim ]]; then
    mkdir ~/.config/nvim
fi

if [[ ! -d ~/.config/nvim/colors ]]; then
    mkdir ~/.config/nvim/colors
fi

cp ${work_dir}/vimrc ~/.config/nvim/init.vim   
cp -r ${work_dir}/vim/colors ~/.config/nvim/

## Vim
if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

cp ${work_dir}/vimrc ~/.vimrc
cp -r ${work_dir}/vim/colors ~/.vim/

## Tmux
cp ${work_dir}/tmux.conf ~/.tmux.conf

# Setup Vundle as vim plugin manager and install plugins
if [[ ${setup_plugins} == "true" ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    nvim +PluginInstall +qall
fi
