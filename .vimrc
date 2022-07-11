set nocompatible

filetype on
set noerrorbells
set noswapfile
set history=5000
set spell
set spelllang=en,cjk

colorscheme elflord
set background=dark
syntax enable
set number
set cursorline
set showcmd
set showmatch
set list
set listchars=eol:↓,tab:»-,trail:_
hi Comment ctermfg=LightBlue

set ignorecase
set smartcase 
set hlsearch 
set incsearch

set laststatus=2

set encoding=utf-8
set fileencoding=utf-8
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

function! CodeMoveToggle()
    if expand("%:e") == "h"
        :edit %:r.cpp
    elseif expand("%:e") == "cpp"
        :edit %:r.h
    endif
endfunction
noremap <F9> :call CodeMoveToggle()<CR>