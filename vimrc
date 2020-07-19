set number
set relativenumber

au BufreadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
