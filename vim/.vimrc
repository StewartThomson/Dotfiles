set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'fatih/vim-go'

Plugin 'elzr/vim-json'

Plugin 'leafgarland/typescript-vim'

Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

syntax on

set wrap

set ttyfast

set laststatus=2

set showmode

set showcmd

set matchpairs+=<:>

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set number
set relativenumber

set hlsearch

set ruler

let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
