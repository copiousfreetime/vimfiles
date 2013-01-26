" Make files really need those tabs
autocmd FileType make set noexpandtab

" haproxy files are not autodetected
autocmd BufRead,BufNewFile haproxy* set ft=haproxy 

" disable color column in quickfix window
autocmd FileType qf set colorcolumn=
