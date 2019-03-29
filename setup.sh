#!/usr/bin/env bash
# Script to setup my dotfiles in a Linux machine

work_dir="$(pwd)"

# Vim config (neovim)
if [[ ! -d ~/.config/nvim ]]; then
	mkdir ~/.config/nvim
fi
if [[ -e ~/.config/nvim/init.vim ]]; then
	rm ~/.config/nvim/init.vim
fi

ln ${work_dir}/.vimrc ~/.config/nvim/init.vim   

# Tmux config
if [[ -e ~/.tmux.conf ]]; then
	rm ~/.tmux.conf
fi

ln ${work_dir}/.tmux.conf ~/.tmux.conf
