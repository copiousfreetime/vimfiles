"" ACK
nnoremap <leader>a :Ack

"" Notes 
"let g:notesRoot          = "~/Dropbox/Notes" " Where all the notes are stored
"let g:notesFileExtension = '.md'             " Default extension
"let g:notesWordSeparator = '-'               " filename word separator

"" Notes
let g:notes_directory    = "~/Dropbox/Notes"
let g:notes_suffix       = ".md"

"" Tagbar
" add in markdown support
let g:tagbar_type_markdown = {
  \ 'ctagstype' : 'markdown',
  \ 'kinds' : [
    \ 'h:Heading_L1',
    \ 'i:Heading_L2',
    \ 'k:Heading_L3'
  \ ]
\ }

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

"" Journal

