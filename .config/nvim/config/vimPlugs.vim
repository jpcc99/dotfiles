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
	function! BuildComposer(info)
	  if a:info.status != 'unchanged' || a:info.force
		if has('nvim')
		  !cargo build --release --locked
		else
		  !cargo build --release --locked --no-default-features --features json-rpc
		endif
	  endif
	endfunction
	
	Plug	'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
	Plug	'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug	'Xuyuanp/nerdtree-git-plugin'
	Plug	'airblade/vim-gitgutter'
	Plug	'junegunn/fzf.vim'
	Plug	'majutsushi/tagbar'
call plug#end()
