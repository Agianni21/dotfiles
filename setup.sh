#!/usr/bin/env bash
# Script to setup my dotfiles in a Linux machine

# Vim config (neovim)
if [[ -e ~/.config/nvim/init.vim ]]; then
	rm ~/.config/nvim/init.vim
fi

ln .vimrc ~/.config/nvim/init.vim   

# Tmux config
if [[ -e ~/.tmux.conf ]]; then
	rm ~/.tmux.conf
fi

ln .tmux.conf ~/.tmux.conf
