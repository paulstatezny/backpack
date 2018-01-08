set number
set autoindent
set nosmartindent
set expandtab
set splitright
set noswapfile

let mapleader=" "

nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>v :vsp<CR>
nnoremap <leader>h :e ~/.vimrc<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>, :bn<CR>
nnoremap <leader>. :bp<CR>
nnoremap <leader>' :bd<CR>
nnoremap <leader>/ :ls<CR>

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=darkgray ctermfg=None term=None cterm=None gui=None
aug END

call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'ElmCast/elm-vim'
Plug 'ervandew/supertab'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'wycats/nerdtree'
Plug 'raichoo/purescript-vim'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

syntax on
filetype on
filetype plugin indent on

" Act more 'normal' about backpacking
" " e.g. to backspace past start of edit
set backspace=indent,eol,start

colorscheme gruvbox

let g:gruvbox_contrast_dark = "hard"

let g:haskell_indent_disable = 1
let g:ctrlp_custom_ignore = 'node_modules$\|\.DS_Store$\|\.git$\|deps$\|elm-stuff$\|_build$'
let g:airline#extensions#wordcount#enabled = 1

set background=dark
