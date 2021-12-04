" --- Geneal 

let mapleader = " "

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a

call plug#begin('~/.config/nvim/plugged')

" define your packages
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

" --- Colors

set background=dark
colorscheme tokyonight

