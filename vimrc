" use Vim settings, not Vi
set nocompatible

" read modifications made outside of Vim
set autoread

" show ruler
set ruler
set showcmd

" show line numbers
set number
set relativenumber

" definitely not 8
set tabstop=4

" open files to the locations where they were last closed
au BufreadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
