let mapleader = " "

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()

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
set clipboard+=unnamedplus
set splitbelow splitright

" Automatically saves file as sudo on root permission files
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

let base16colorspace=256
colorscheme base16-gruvbox-dark-hard

hi Normal ctermbg=none
hi NonText ctermbg=none

" Bindings

	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

