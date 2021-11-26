syntax on

imap jj <Esc>

set noerrorbells
set tabstop=4 softtabstop=5
set shiftwidth=4
set expandtab
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set undodir=~./vim/undodir
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=100
set number relativenumber
set nu rnu
highlight ColorColum ctermbg=0 guibg=lightgrey
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()
highlight LineNr ctermfg=blue
" Colors Scheme
colorscheme onedark
filetype on
filetype plugin indent on
" Lua Rekey
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-refrences)
if exists('g:vscode')
    source $HOME/.config/nvim/vscode-movement.vim 
else
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/keys/which-key.vim
    source $HOME/.config/nvim/fzf-config.vim
endif
