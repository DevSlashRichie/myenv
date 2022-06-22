:set relativenumber
:set number
set clipboard=unnamed
syntax enable
set termguicolors
set showcmd
set encoding=utf8
set showmatch
set sw=2
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab

" PACKER "
let g:coq_settings = { 'auto_start': v:true }
lua require('plugins')
lua require('lsp')
" END PACKER "

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'wojciechkepka/bogster'
call plug#end()

filetype plugin indent on


colorscheme bogster

let g:rainbow_active = 1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

lua require('legendaryconf')
