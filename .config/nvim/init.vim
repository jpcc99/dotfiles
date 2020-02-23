" Created by João Pedro da Costa Carvalho

" Appearence
scriptencoding utf-8
set encoding=utf-8
set t_Co=256
set t_ut=
set number
set cursorline
set textwidth=80
set colorcolumn=+1
set visualbell
set ruler
set title titlestring=
set cmdheight=2
set list listchars=tab:│·,trail:·
set nojoinspaces
syntax on

" Settings
set splitbelow splitright
set showmatch
set showcmd
set wildmenu
set ruler

" Buffer
set modifiable

" Searching
nnoremap <F3> :set hlsearch!<CR>
set incsearch
set ignorecase
set smartcase
set gdefault

" Tabulation
set tabstop=4     " tab spacing
set shiftwidth=4
" set expandtab     " tabs are now spaces
set autoindent
set wrap		  " Wrap lines
set nowrap		  " Don't wrap text

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
map		    <silent><C-n> 	    :NERDTreeToggle<CR>
map		    <silent><C-x> 	    :CocCommand<CR>
map         <silent><C-p>       :FZF<Cr>
map         <silent><A-t>       :tabnew<Cr>
map         <silent><A-w>       :tabclose<Cr>
map         <silent><A-l>       :tabnext<Cr>
map         <silent><A-h>       :tabprevious<Cr>
nmap        <silent><C-b>       :TagbarToggle<CR>
nmap	    <silent><C-t>		:call Open_terminal()<CR>
nmap        <silent><A-v>		:vsplit<CR>
nmap	    <silent><A-s>		:split<CR>
:imap			jk			<ESC>
nnoremap	    zz		    :update<CR>

" COC 
set statusline^=%{coc#status()}

" FZF
let g:fzf_layout      = { 'down': '~40%'}

" Airline
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_set = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#coc#enabled = 1

set secure				" disables unsafe commands in project specific

"color dracula
color atom-dark-256

function Open_terminal()
	split
	resize 10
	terminal
endfunction
