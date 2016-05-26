set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'jnurmine/Zenburn'
Bundle 'vim-scripts/indentpython.vim'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'scrooloose/syntastic'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable   " Enable syntax highlight

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let g:mapleader=","
let maplocalleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For vimrc editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>e :vsplit $MYVIMRC<CR>
if has ("autocmd")
    autocmd! BufWritePost .vimrc source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap Esc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                           " Always show current position
set backspace=indent,eol,start      " Set backspace
set whichwrap+=h,l                  " Let h,l to cross line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set smarttab
set lbr
set number

set list listchars=tab:>-,trail:-   " Make space and tab visible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set nowrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                " Highlight search things
set incsearch               " Do incremental searching
set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F4> :bd!<CR>      " Close Buffer
set showmatch               " Show mathing bracets

set mat=2                   " How many tenths of a second to blink

" Set status line
set laststatus=2
set statusline=[%f][%{&ff}][%Y]%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}][%{strftime('%y-%m-%d-%H:%M\ %a')}]%=[Line:%l/%L,Column:%c%V]\ %P

