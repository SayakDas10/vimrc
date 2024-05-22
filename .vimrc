set nocompatible
set number
set relativenumber
syntax on
set encoding=utf-8
set wrap
set laststatus=2
set autoindent
set wildmenu
set smarttab
set showmatch
set showtabline=2
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set nowritebackup
filetype indent on
filetype plugin indent on
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tmsvg/pear-tree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'hzchirs/vim-material'
Plugin 'tomasr/molokai'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'instant-markdown/vim-instant-markdown'
Plugin 'Yggdroot/indentLine'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()


set termguicolors
set t_Co=256
set background=light
let g:tokyonight_style='night'
let g:tokyonight_enable_italic=1
let g:airline_theme='zenburn'
let g:instant_markdown_theme='dark'
let g:vim_markdown_math = 1
let g:vim_markdown_borderless_table = 1
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_mathjax = 1
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:indentLine_char_list = ['|']
colorscheme PaperColor
