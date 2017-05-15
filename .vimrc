set nocompatible
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'ctrlpvim/ctrlp.vim'

call plug#end()
