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
