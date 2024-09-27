
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ACK
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a :Ack

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pad
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pad#dir                    = "~/Dropbox/Notes"
let g:pad#default_format         = "markdown"
let g:pad#default_file_extension = ".md"
let g:pad#local_dir              = "notes"
let g:pad#window_height          = 15
let g:pad#set_mappings           = 0
let g:pad#open_in_split          = 0
let g:pad#search_backend         = "ag"

nmap <leader>kl <Plug>(pad-list)
nmap <leader>kn <Plug>(pad-new)
nmap <leader>ks <Plug>(pad-search)
nmap <leader>kf <Plug>(pad-incremental-search)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" notational-fzf-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nv_search_paths        = ['./notes','~/Dropbox/the-archive' ]
let g:nv_main_directory      = '~/Dropbox/the-archive'
let g:nv_default_extension   = '.md'
let g:nv_use_short_pathnames = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" netrw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:dotfiles           = '\(^\|\s\s\)\zs\.\S\+'
let s:escape             = 'substitute(escape(v:val, ".$~"), "*", ".*", "g")'
let g:netrw_preview      = 1
let g:netrw_liststyle    = 3
let g:netrw_winsize      = 80
let g:netrw_altv         = 1
let g:netrw_browse_split = 3
let g:netrw_fastbrowse   = 1
let g:netrw_banner       = 0
let g:netrw_sort_sequence = '[\/]$,*,\%(' . join(map(split(&suffixes, ','), 'escape(v:val, ".*$~")'), '\|') . '\)[*@]\=$'
let g:netrw_list_hide     =
       \ join(map(split(&wildignore, ','), '"^".' . s:escape . '. "$"'), ',') . ',^\.\.\=/\=$' .
       \ (get(g:, 'netrw_list_hide', '')[-strlen(s:dotfiles)-1:-1] ==# s:dotfiles ? ','.s:dotfiles : '')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

vmap <Leader><Enter>   <Plug>(LiveEasyAlign)
nmap <Leader><Leader>a <Plug>(LiveEasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" DBEXT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:dbext_default_profile_PG = 'type=PGSQL:user=jeremy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Ctrl-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open new file in a new tab
let g:ctrlp_open_new_file = 't' "
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.gem|tmp)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Dirvish
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup custom_dirvish_events
  autocmd!
  "Map t to 'open in new tab'.
  autocmd Filetype dirvish
    \  nnoremap <buffer> t :call dirvish#open('tabedit', 0)<CR>
    \ |xnoremap <buffer> t :call dirvish#open('tabedit', 0)<CR>

  autocmd Filetype dirvish
    \  nnoremap <buffer> s :sort r /[^\/]$/<CR>
    \ |xnoremap <buffer> s :sort r /[^\/]$/<CR>
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim-tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_tags_auto_generate = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vipsql
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Whether or not to print a separator in the output buffer when sending a new
" command/query to psql. Has no effect if g:vipsql_auto_clear_enabled = 1.
let g:vipsql_separator_enabled = 0

" Starts an async psql job, prompting for the psql arguments.
" Also opens a scratch buffer where output from psql is directed.
noremap <leader>po :VipsqlOpenSession<CR>

" Terminates psql (happens automatically if the output buffer is closed).
noremap <silent> <leader>pk :VipsqlCloseSession<CR>

" In normal-mode, prompts for input to psql directly.
nnoremap <leader>ps :VipsqlShell<CR>

" In visual-mode, sends the selected text to psql.
vnoremap <leader>ps :VipsqlSendSelection<CR>

" Sends the selected _range_ to psql.
noremap <leader>pr :VipsqlSendRange<CR>

" Sends the current line to psql.
noremap <leader>pl :VipsqlSendCurrentLine<CR>

" Sends the entire current buffer to psql.
noremap <leader>pb :VipsqlSendBuffer<CR>

" Sends `SIGINT` (C-c) to the psql process.
noremap <leader>pc :VipsqlSendInterrupt<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\}
" \   'javascript': ['prettier', 'eslint'],

" let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint:development --'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copilot
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:copilot_enabled = v:true
let g:copilot_node_command = "~/.nvm/versions/node/v22.7.0/bin/node"
