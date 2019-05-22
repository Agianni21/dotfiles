"Set to bash so it works nicely with Vundle (I like to use Fish shell

set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required to setup plugins

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"<--- Plugins --->"
Plugin 'scrooloose/nerdtree'
Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
"<---         --->"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" After Vundle has done its stuff, i can switch filetype on again
filetype on

"Colorscheme"
set termguicolors
let ayucolor="mirage"
colorscheme ayu
autocmd VimEnter * AirlineTheme ayu_mirage

"Use relative numbers and line numbers"
set relativenumber
set number

"Use H and L to go to start and end of the line, respectively"
noremap H ^
noremap L $
noremap ^ H
noremap $ L

"Use <CTRL-ARROW> to switch windows
noremap <C-Left> <C-W><Left>
noremap <C-Right> <C-W><Right>
noremap <C-Up> <C-W><Up>
noremap <C-Down> <C-W><Down>

" Set visible whitespaces
set list
set lcs=tab:>-,eol:»

" Indent line plugin config (TAB inserts 4 spaces, show | every 4 spaces)
let g:indentLine_char_list = "|"
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Set a line in line where cursor is
set cursorline
