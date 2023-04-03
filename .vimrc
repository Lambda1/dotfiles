set nocompatible

filetype on
set noerrorbells
set noswapfile
set history=5000
set spelllang=en,cjk

colorscheme elflord
set background=dark
syntax enable
set number
set cursorline
set showcmd
set showmatch
set list
hi Comment ctermfg=LightBlue

set ignorecase
set smartcase
set hlsearch
set incsearch

set laststatus=2

set encoding=utf-8
set fileencoding=utf-8
set listchars=eol:↓,tab:»-,trail:_
set fileencodings=utf-8,sjis,euc-jp,iso-2022-jp
set fileformats=unix,dos
set formatoptions+=mM 
set autoread

set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4

set autoindent
set smartindent
if has("autocmd")
	augroup myVimrc
		autocmd! 
		autocmd FileType c,cpp set nosmartindent cindent
	augroup END
endif

" MyMacro
function! CodeMoveToggle()
	if expand("%:e") == "h"
		:edit %:r.cpp
	elseif expand("%:e") == "cpp"
		:edit %:r.h
	endif
endfunction
noremap <F9> :call CodeMoveToggle()<CR>

noremap <F10> :set spell!<CR>

" GVim
if has('gui_running')
	colorscheme koehler
	set listchars=eol:¿,tab:»-,trail:_
	set renderoptions=type:directx,renmode:5
	set guifont=Consolas:h12
	set guifontwide=MS_Gothic:h12
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=R
	set guioptions-=l
	set guioptions-=L
	set guioptions-=b
	set columns=125
	set lines=25
endif

" Neovim
if has('nvim')
	" plugin
	packadd vim-jetpack
	call jetpack#begin()
		Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
		Jetpack 'lambdalisue/fern.vim'
		Jetpack 'vim-airline/vim-airline'
		Jetpack 'vim-airline/vim-airline-themes'
		Jetpack 'catppuccin/nvim', { 'as': 'catppuccin'}
	call jetpack#end()

	" Fern
	let g:fern#default_hidden=1 " Show hidden files.
	noremap <F12> :Fern . -reveal=% -drawer -toggle -width=30<CR>
	" vim-airline
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_idx_mode = 1
	let g:airline_theme = 'minimalist'
	" color
	colorscheme catppuccin-mocha
endif
