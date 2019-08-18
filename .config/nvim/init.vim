" Vim-Plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'sjl/badwolf'
Plug '844196/lightline-badwolf.vim' 
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-python/python-syntax'
Plug 'jreybert/vimagit'
Plug 'severin-lemaignan/vim-minimap'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Lightline Plugin
let g:lightline = {
      \ 'colorscheme': 'badwolf',
      \ }

" Theme
set background="dark"
colorscheme badwolf
set termguicolors

" Map leader to
let mapleader=' '

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Disable compatibility
set nocompatible

" Disable showing modes
set noshowmode

" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Visual settings
syntax on
set number

" Clipboard copy/paste/cut
if has ('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

" Paste from clipboard
vnoremap <leader>p "+p
vnoremap <leader>P "+P
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Status bar
set laststatus=2

" Disable audible bell
set vb

"Disable visual bell
set novisualbell

" Disable error bell
set noerrorbells

" Disable backup/swap
set nobackup
set nowritebackup
set noswapfile

" Mouse support
set mouse=a

