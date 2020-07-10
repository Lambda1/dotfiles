syntax on
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos

set number
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set cursorline

set formatoptions+=mM

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif
