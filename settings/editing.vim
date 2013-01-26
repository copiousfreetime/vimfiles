" setup the leaders
let mapleader = ','
let maplocalleader = ','

" Filetype manipulation
filetype off
filetype plugin indent on

" Toggle line numbers
map <Leader>n :set number!<CR>

" toggle paste mode
map <Leader>p :set paste!<CR>

" strip leading tabs and trailing whitespace
command! Tr %s/\s\+$//ge | retab | nohlsearch

" replace the selected text everywhere in the file
" http://stackoverflow.com/questions/676600/vim-search-and-replace-selected-text
vnoremap <C-r> "hy:%s/\V<C-r>=escape(@h,'/')<CR>//gc<left><left><left>

" search for the selected text in the current file
" this is useful for more complex strings than #/* can search
vnoremap <C-f> "hy:/\V<C-r>=escape(@h,'/')<CR>/<CR>

" Split movement
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
nnoremap <leader>s <C-w>v<C-w>l " open up a new vertical split


" Tab movement
map tn gt  " tab previous
map tp gT  " tab next

" make Y consistent with C and D
" nnoremap Y y$

" insert a \v to turn off vims regex chars
nnoremap / /\v
vnoremap / /\v
nnoremap <Leader><Space> :noh<CR> " clear the search highligth
nnoremap <tab> %                  " move to matching bracket pairs
vnoremap <tab> %                  " move to matching bracket pairs

" prevent hitting f1 while going for ESC
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" hit ; instead of : for commands
nnoremap ; :

" jj or kk instead of hitting esacpe to get out of insert mode
inoremap kk <ESC>
inoremap jj <ESC>

