call plug#begin('~/.config/nvim/plugins')

" Plug 'scrooloose/nerdcommneter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug '9mm/vim-closer'
Plug 'tpope/vim-endwise'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'jackguo380/vim-lsp-cxx-highlight'


Plug 'danilo-augusto/vim-afterglow'

call plug#end()
