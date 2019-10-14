" Make files really need those tabs
autocmd FileType make set noexpandtab

" haproxy files are not autodetected
autocmd BufRead,BufNewFile haproxy* set ft=haproxy 

" disable color column in quickfix window
autocmd FileType qf set colorcolumn=

" Open up diary files with a template
autocmd BufNewFile ~/DropBox/Notes/journal/*.md call s:new_journal_entry(expand('<afile>'))

function! s:new_journal_entry(filename)
  let t = [ '# '. fnamemodify( a:filename, ':t:r' ) ]
  let t += ['', '', '## TODO']
  let t += ['', '', '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -']
  let t += ['', '', '## DONE']
  let t += ['', '', '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -']
  let t += ['', '', '## HOURS']
  call append(0, t)
endfunction

" All the javascripts
au FileType javascript setlocal shiftwidth=4 tabstop=4
au FileType javascript.jsx setlocal shiftwidth=4 tabstop=4
au FileType scss setlocal shiftwidth=4 tabstop=4
au FileType css setlocal shiftwidth=4 tabstop=4
