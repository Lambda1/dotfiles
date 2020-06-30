syntax on
set number
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set cursorline

set formatoptions+=mM
set textwidth=80

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif
