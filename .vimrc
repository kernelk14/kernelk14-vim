" This is my personal config

set nocompatible
" is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
" set background=dark
" set t_Co=256
set termguicolors
set number
set relativenumber
syntax enable
set cursorline
set expandtab
set ts=2
set sw=2
set sts=2
set incsearch
set ignorecase
set nohlsearch
set encoding=utf-8
set fileencoding=utf-8
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE
let mapleader=";"
let maplocalleader=";"

let laststatus=2
nnoremap ;l <cmd>NERDTreeToggle<cr>
" this is for Vim-Plug

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'rbong/vim-crystalline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
" Plug 'itchyny/lightline.vim'
" Plug 'glepnir/spaceline.vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'ryanoasis/vim-devicons'
" Plug 'bluz71/vim-mistfly-statusline'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'OmniSharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'bling/vim-bufferline'
" Plug 'maralla/completor.vim'
call plug#end()


" let g:completor_python_binary = '/home/khyle/.local/lib/python3.10/site-packages/jedi'

let g:OmniSharp_server_stdio = 1
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
let g:gitgutter_git_executable="/usr/bin/git"
" export TERM=xterm-256color
augroup plug_config
  autocmd! 
  autocmd bufwritepost .vimrc source %
augroup end
