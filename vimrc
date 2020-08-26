set number
set relativenumber
set tabstop=4

au BufreadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
