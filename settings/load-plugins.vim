call plug#begin('~/.config/nvim/plugged')

" file navigation
" Plug 'kien/ctrlp.vim'
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim' ", { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Alok/notational-fzf-vim'

" update tags files on ever save
Plug 'vim-scripts/AutoTag'
Plug 'mileszs/ack.vim'
Plug 'szw/vim-tags'

" look at all the buffers we have open
Plug 'jlanzarotta/bufexplorer'

" tmux integeration
Plug 'christoomey/vim-tmux-runner'

" status line
Plug 'itchyny/lightline.vim'

" Color schemes
" Plug 'altercation/vim-colors-solarized'
" Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'

" EDITING AND MOVING

" fix '.' so it does the right thing with plugins
Plug 'tpope/vim-repeat'

" comment out lines
Plug 'tpope/vim-commentary'

" deal with pairs
Plug 'tpope/vim-surround'

" add 'end' where it should go
Plug 'tpope/vim-endwise'

" matching do/end etc
Plug 'tmhedberg/matchit'

" Align things up neatly
Plug 'junegunn/vim-easy-align'

" file manipulation
Plug 'tpope/vim-eunuch'

" tree browser
Plug 'justinmk/vim-dirvish'

"## LANGUAGE AND SYNTAX
" All the languages
Plug 'sheerun/vim-polyglot'

" syntax checking
Plug 'vim-syntastic/syntastic'

" looking at the source code
Plug 'majutsushi/tagbar'

" sql
Plug 'martingms/vipsql'

" rails + extra ruby things language support
Plug 'tpope/vim-rails'
Plug 'joker1007/vim-ruby-heredoc-syntax'
"Plug 'dense-analysis/ale'

" csv files
Plug 'chrisbra/csv.vim'


"## MISC

" Git support
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'airblade/vim-gitgutter'
Plug 'int3/vim-extradite'

" Gists
Plug 'mattn/gist-vim'

" note taking
Plug 'mattn/calendar-vim'
Plug 'fmoralesc/vim-pad', { 'branch': 'devel' }

call plug#end()
