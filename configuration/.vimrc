let mapleader=" "      " Setting the space key as my leader key 🎈
set number             " Show line numbers
set autoindent         " Automatically indent
set noswapfile         " Don't put unsaved changes in a swap file
set timeoutlen=200     " After the leader key, you have this many ms to finish a key combination
set ttimeoutlen=0
set shiftwidth=2       " Shifting text with << and >> will move it 2 spaces left or right
set tabstop=2          " Tabs are 2 spaces wide
set expandtab          " Hitting tab in insert mode will inject `tabstop` spaces
set list               " Show whitespace
set listchars+=space:· " Use the · character for spaces when showing whitespace
filetype on            " Attempt to detect the type of file that's being edited
filetype plugin on     " Load specific plugins based on the filetype
filetype indent on     " Enable loading different indent files to different filetypes

set backspace=indent,eol,start " Act more 'normal' about backpacking e.g. to backspace past start of edit

" OMG I can't believe I lived without `hidden` for so long
" It makes it so you can change buffers without being forced to
" write/undo changes first
set hidden

" Apparently
" Apparently disabling relativenumber (e.g. 5j) improves performance
set norelativenumber

" Changing the regex engine; apparently more performant
" https://github.com/joshukraine/dotfiles/blob/master/vim-performance.md
set re=1

" Custom key combinations:

" Space+q to quit
nnoremap <leader>q :q<CR>

" Space+w to write
nnoremap <leader>w :w<CR>

" Space+n to toggle line numbers
nnoremap <leader>n :set number!<CR>

" Space+space to toggle visual whitespace
nnoremap <leader><Space> :set list!<CR>

" Space+o to toggle paste mode
nnoremap <leader>o :set paste!<CR>

" Space+Tab to convert tabs to spaces
nnoremap <leader><Tab> :set expandtab<CR>:retab<CR>

" Navigating around splits with Ctrl + hjkl
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

" Open a buffer with the name you type next
nnoremap <leader>f :buf<SPACE>

" Add newline to current position
nnoremap <leader>j i<CR><Esc>

" Open black hole register
nnoremap <leader>b "_

" Delete character before cursor, into black hole register
nnoremap <leader>x "_x

" Redo
nnoremap <leader>r <C-r>

" `autocmd`s can be a real tax on performance; apparently putting them in
" an augroup and clearing it (autocmd!) first helps
augroup vimrc_autocmd
  autocmd!

  " Strip trailing spaces when saving a file
  " https://unix.stackexchange.com/a/75431
  autocmd BufWritePre * :%s/\s\+$//e

  " Cursor insert
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline

  " Custom color for the cursor line
  " https://vi.stackexchange.com/a/19821
  autocmd BufNewFile,BufRead * call matchadd('SpecialKey', '\s\+')
  autocmd BufNewFile,BufRead * call matchadd('NonText', '\n\+')
augroup END

call plug#begin('~/.vim/plugged')

"Plug 'mhinz/vim-mix-format'
Plug 'elixir-lang/vim-elixir'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'ElmCast/elm-vim'
Plug 'ervandew/supertab'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
"Plug 'airblade/vim-gitgutter' -- too slow :-(
"Plug 'wycats/nerdtree'
Plug 'raichoo/purescript-vim'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'nikvdp/ejs-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'paulstatezny/nofrils'

" Initialize plugin system
call plug#end()

if $EINK == 'true'
  " Tell vim we're running in a terminal that doesn't support colors
  set t_Co=0

  syntax reset             " Turn off syntax highlighting
  syntax off             " Turn off syntax highlighting
else
  colorscheme gruvbox    " Use dark color theme
  syntax on              " Turn on syntax highlighting
  let g:gruvbox_contrast_dark = "hard"
  set background=dark    " Dark color scheme
endif

let g:haskell_indent_disable = 1
let g:ctrlp_custom_ignore = 'priv/static\|apps/server/doc\|node_modules$\|\.DS_Store$\|\.git$\|deps$\|ios/build$\|ios/Pods$\|elm-stuff$\|_build\|doc$\|^android/app/build$'
let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['ale', 'quickfix', 'tabline']
let g:airline#extentions#tabline#left_sep = '|'
"let g:gitgutter_diff_args = 'HEAD' " Highlight both staged and unstaged changes -- doesn't seem to work
"let g:mix_format_on_save = 1
"let g:mix_format_silent_errors = 1
