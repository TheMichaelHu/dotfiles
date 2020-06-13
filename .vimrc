" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-python/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible
set noshowmode
filetype off
set tabstop=4
set expandtab
set shiftwidth=4
set so=999

let g:python_highlight_all = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'

noremap <C-K> :FormatLines<CR>
inoremap <C-K> <C-O>:FormatLines<CR>

filetype plugin indent on
syntax on
set number
set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" autocmd vimenter * NERDTree
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_python_checkers=["gpylint"]
let g:syntastic_python_checker_args = "--rcfile=~/.gpylintrc"
let vim_markdown_preview_github=1

set clipboard=unnamedplus

set hidden
let mapleader = " "
" buffers custom commands
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'
"nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

map <leader>p :setlocal paste!<cr>

" Damian conway video
highlight ColorColumn ctermbg=gray
call matchadd("ColorColumn", "\\%81v.", 100)
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
nnoremap ; :

" Jump to next error
nmap <leader>e :lnext<CR>
nmap <leader>E :lprev<CR>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
