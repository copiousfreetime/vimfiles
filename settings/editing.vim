" Migrated to lua/config/keymaps.lua
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

" Tab movement
map tn :tabnext<CR>
map tp :tabprevious<CR>

" insert a \v to turn off vims regex chars
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

