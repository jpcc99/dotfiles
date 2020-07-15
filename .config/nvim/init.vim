" Created by João Pedro da Costa Carvalho

" Appearence
scriptencoding utf-8
set encoding=utf-8
set guifont=Iosevka_Medium
syntax on
set number
set relativenumber
set cursorline
set colorcolumn=+1
set visualbell
set title titlestring=
set cmdheight=2
set nojoinspaces
set termguicolors

" Settings
set splitbelow splitright
set showmatch
set wildmenu
set wrap			" Wrap lines
set textwidth=80

" Buffer
set modifiable

" Searching
nnoremap <silent><F3> :set hlsearch!<CR>
set incsearch
set ignorecase
set smartcase
set gdefault

" Tabulation
set tabstop=4		" tab spacing
set shiftwidth=4
set autoindent

" Performance
set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=50

" Syntax Highlight
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json

" vimPlug
source ~/.config/nvim/config/vimPlugs.vim

" Mapping
source ~/.config/nvim/config/maps.vim

" COC 
set statusline^=%{coc#status()}

" COC-actions
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
" COC-vimlsp
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

" FZF
let g:fzf_layout = { 'down': '~40%'}

" GitGutter
let g:gitgutter_grep = 'ag'

" 
let g:markdown_composer_open_browser = 0

" Airline
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_set = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#coc#enabled = 1

set secure	" disables unsafe commands in project specific

" Colourscheme
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_gruvbox_contrast_dark = "hard"
colorscheme gruvbox
