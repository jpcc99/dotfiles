" Created by João Pedro da Costa Carvalho

" Appearence
set encoding=utf-8
set t_Co=256
"set number
set relativenumber
set cursorline
set textwidth=80
set wildmenu
set showmatch
set list
syntax on

" Buffer
set modifiable

" Searching
nnoremap <F3> :set hlsearch!<CR>
set ignorecase
set smartcase
set gdefault

" Tabulation
set tabstop=4 shiftwidth=4 "expandtab

" vimPlug
source ~/.config/nvim/config/vimPlugs.vim

" NERDTree Toggle
map <C-n> :NERDTreeToggle<CR>

set statusline^=%{coc#status()}

" Airline
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_set = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#coc#enabled = 1

"color dracula
color atom-dark-256
