set number
set autoindent
set expandtab
set splitright
set noswapfile
set timeoutlen=250
set ttimeoutlen=0
set shiftwidth=2
set tabstop=2

autocmd BufWritePre * :%s/\s\+$//e

let mapleader=" "

nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader><Space> :set list!<CR>
nnoremap <leader>o :set paste!<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Vertical split
nnoremap <leader>v :vsp<CR>

" Open .vimrc
nnoremap <leader>h :e ~/.vimrc<CR>

" Open CtrlP
nnoremap <leader>p :CtrlP<CR>

" Select previous buffer
nnoremap <leader>[ :bp<CR>

" Select next buffer
nnoremap <leader>] :bn<CR>

" Delete current buffer
nnoremap <leader>' :bd<CR>

" List buffers
nnoremap <leader>/ :ls<CR>

" Add newline to current position
nnoremap <leader>j i<CR><Esc>

" Open black hole register
nnoremap <leader>b "_

" Delete character before cursor, into black hole register
nnoremap <leader>x "_x

" Redo
nnoremap <leader>r <C-r>

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
aug END

call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'ElmCast/elm-vim'
Plug 'ervandew/supertab'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'wycats/nerdtree'
Plug 'raichoo/purescript-vim'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'nikvdp/ejs-syntax'
Plug 'terryma/vim-multiple-cursors'

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
let g:ctrlp_custom_ignore = 'apps/server/doc\|node_modules$\|\.DS_Store$\|\.git$\|deps$\|elm-stuff$\|_build$'
let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['ale', 'quickfix', 'tabline']
let g:airline#extentions#tabline#left_sep = '|'
let g:gitgutter_diff_args = 'HEAD' " Highlight both staged and unstaged changes

set background=dark
set listchars+=space:·
set list
"set listchars+=space:␣

autocmd BufNewFile,BufRead * call matchadd('SpecialKey', '\s\+')
autocmd BufNewFile,BufRead * call matchadd('NonText', '\n\+')
