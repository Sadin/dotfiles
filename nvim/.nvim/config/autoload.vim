call plug#begin('~/.config/nvim/plugged')

" Colorschemes
Plug 'xoria256.vim'
Plug 'jacoborus/tender.vim'

" General
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
