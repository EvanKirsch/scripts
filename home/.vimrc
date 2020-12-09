syntax on 

call plug#begin('~/.vim/plugged')

"TODO fix lol 
"Plug 'ycm-core/YouCompleteMe'

Plug 'itchyny/lightline.vim' 
Plug 'chrisbra/Colorizer'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter' 

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let $BASH_ENV = "~/.bash_aliases"
let g:colorizer_auto_filetype='css,html,conf'

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmode
set laststatus=2
set shortmess+=F

map <C-n> :NERDTreeToggle<CR>
