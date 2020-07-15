call plug#begin('~/.config/nvim/plugged')
	" Themes
	Plug	'vim-airline/vim-airline'
	Plug	'vim-airline/vim-airline-themes' 
	Plug	'ryanoasis/vim-devicons'
	Plug	'morhetz/gruvbox'
	
	" Language Syntax Support
	Plug	'neoclide/coc.nvim', {'branch': 'release'}
	Plug	'w0rp/ale'
	Plug	'udalov/kotlin-vim'
	
	" Tools
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
	Plug	'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug	'Xuyuanp/nerdtree-git-plugin'
	Plug	'airblade/vim-gitgutter'
	Plug	'tpope/vim-fugitive'
	Plug 'jreybert/vimagit'
	Plug	'junegunn/fzf.vim'
	Plug	'majutsushi/tagbar'
  Plug  'Yggdroot/indentLine'
  Plug 'mattn/emmet-vim'
call plug#end()
