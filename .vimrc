" mkdir -p ~/.vim/bundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/bin/fzf


if has('python3')
    command! -nargs=1 Py py3 <args>
    set pythonthreedll=/Users/r0by/.pyenv/versions/3.7.1/
    set pythonthreehome=/Users/r0by/.pyenv/versions/3.7.1/
else
    command! -nargs=1 Py py <args>
    set pythondll=/Users/r0by/.pyenv/versions/2.7.5/lib
    set pythonhome=/Users/r0by/.pyenv/versions/2.7.5/
endif


call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'Yggdroot/LeaderF'
Plugin 'zivyangll/git-blame.vim'

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

nnoremap 1 :tabprev<CR>
nnoremap 2 :tabnext<CR>
nnoremap <C-Space> :Leaderf file<CR>
nnoremap <C-S-Space> :Leaderf rg<CR>
vnoremap * y/<C-R>"<CR>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" the silver searcher settings
"
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

" nerdtree settings
"
let NERDTreeShowHidden=1

" make it pretty
"
colorscheme afterglow

if has('gui_running')
    "set guifont=Monaco:h16
    "set guifont=IBMPlexMono-TextItalic:h18
    set guifont=JetBrainsMono-MediumItalic:h16
endif



