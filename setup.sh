#!/usr/bin/env bash
# Script to setup my dotfiles in a Linux machine

work_dir="$(pwd)"

# Install neovim
if ! type nvim &> /dev/null; then
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
fi

# Vim config (neovim)
if [[ ! -d ~/.config/nvim ]]; then
    mkdir ~/.config/nvim
fi
if [[ -e ~/.config/nvim/init.vim ]]; then
    rm ~/.config/nvim/init.vim
fi

ln ${work_dir}/.vimrc ~/.config/nvim/init.vim   
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall

# Tmux config
if [[ -e ~/.tmux.conf ]]; then
    rm ~/.tmux.conf
fi

ln ${work_dir}/.tmux.conf ~/.tmux.conf
