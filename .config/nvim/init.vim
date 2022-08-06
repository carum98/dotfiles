set ruler
set number
set mouse=a
set relativenumber

set showcmd
set showmatch

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=UTF-8

" Pluggins
call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" File Explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Status bar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

" Indent Bankline
Plug 'lukas-reineke/indent-blankline.nvim'

"Highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Show changes on file
Plug 'mhinz/vim-signify'

call plug#end()

" Theme
colorscheme tokyonight

" SetUp
lua << END
require('lualine').setup()
require("nvim-tree").setup()
require'nvim-treesitter.configs'.setup{
    ensure_installed = { "javascript", "vue", "html", "css" },
    highlight = {
       enable = true,
       additional_vim_regex_highlighting = false,
    },
}

END
let mapleader = " "

nnoremap <leader>e :NvimTreeToggle<CR>
