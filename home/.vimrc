syntax on 

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim' 
Plug 'chrisbra/Colorizer'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter' 

call plug#end()

let g:lightline = {
            \'colorscheme': 'jellybeans',
            \}

let $BASH_ENV = "~/.bash_aliases"
let g:colorizer_auto_filetype='css,html,conf'

set noerrorbells
set relativenumber
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
nnoremap <C-f> :FZF <CR>
