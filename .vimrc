" mkdir -p ~/.vim/bundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

if has('python3')
    command! -nargs=1 Py py <args>
    set pythonthreedll=/Users/r0by/.pyenv/versions/3.8.6
else
    command! -nargs=1 Py py <args>
    set pythondll=/Users/r0by/.pyenv/versions/2.7.18/lib
    set pythonhome=/Users/r0by/.pyenv/versions/2.7.18/
endif


call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive' 
Plugin 'leafgarland/typescript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Yggdroot/LeaderF', {'do': ':LeaderfInstallCExtension'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
set statusline+=%f

set ignorecase
set hlsearch
set incsearch
set number
set noswapfile

nnoremap 1 :tabprev<CR>
nnoremap 2 :tabnext<CR>
nnoremap <Tab> :Leaderf file<CR>
nnoremap <Tab><Tab> :Leaderf rg<CR>
vnoremap * y/<C-R>"<CR>

" nerdtree settings
"
let NERDTreeShowHidden=1

" make it pretty
"
colorscheme pablo

if has('gui_running')
    "set guifont=Monaco:h16
    "set guifont=IBMPlexMono-TextItalic:h18
    set guifont=JetBrainsMono-MediumItalic:h16
endif


set backspace=indent,eol,start

let g:Lf_RgConfig = [
        \ "--max-columns=150",
        \ "--glob=!{node_modules,.git,.venv}",
        \ "--hidden",
        \ "--word-regexp"
    \ ]
