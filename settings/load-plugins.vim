call plug#begin('~/.config/nvim/plugged')

" file navigation
Plug 'kien/ctrlp.vim'

" update tags files on ever save
Plug 'vim-scripts/AutoTag'
Plug 'mileszs/ack.vim'
Plug 'szw/vim-tags'

" look at all the buffers we have open
Plug 'jlanzarotta/bufexplorer'

" tmux integeration
Plug 'christoomey/vim-tmux-runner'

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
Plug 'edsono/vim-matchit'

" Align things up neatly
Plug 'junegunn/vim-easy-align'

" file manipulation
Plug 'tpope/vim-eunuch'

" tree browser
Plug 'justinmk/vim-dirvish'

"## LANGUAGE AND SYNTAX
" syntax checking
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'kchmck/vim-coffee-script'

" looking at the source code
Plug 'majutsushi/tagbar'

" ruby language support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'hallison/vim-ruby-sinatra'
Plug 'joker1007/vim-ruby-heredoc-syntax'

" rust language support
Plug 'wting/rust.vim'

" csv files
Plug 'chrisbra/csv.vim'

" markdown
Plug 'tpope/vim-markdown'

" textile
Plug 'timcharper/textile.vim'

" toml
Plug 'cespare/vim-toml'

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
Plug 'fmoralesc/vim-pad'

call plug#end()
