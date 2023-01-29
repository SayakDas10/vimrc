set nocompatible
set number " Show line numbers
set relativenumber " Show relative line number
syntax on " Syntax highlightin
set encoding=utf-8
set wrap
set laststatus=2 " Status bar set wrap " Automatically wrap lines 
set autoindent " Autoindent code
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
set updatetime=300
set signcolumn=yes
filetype indent on
filetype plugin indent on
syntax enable


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tomasr/molokai'
Plugin 'vim-syntastic/syntastic'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'hzchirs/vim-material'
Plugin 'joshdick/onedark.vim'
Plugin 'tmsvg/pear-tree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'Vimjas/vim-python-pep8-indent'
call vundle#end()

let g:pymode_indent = 0
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set termguicolors
set t_Co=256
set background=dark
let g:tokyonight_style='night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight


nnoremap py :!python %<CR>   " Python run keymap
nnoremap no :NERDTreeToggle<CR>  " NERDTree open

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

