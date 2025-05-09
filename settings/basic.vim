""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings organized by section, just like the docs
" :options for more information
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Neovim
set clipboard+=unnamedplus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 2 moving around, searching and patterns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " searches are case insensitive...
set smartcase  " unless they contain a capital letter


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 3 tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nothing yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 4 displaying text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=3     " show 3 lines above/below cursor
set nowrap          " do not wrap long lines
set sidescroll=1    " scroll 1 to the left/right
set sidescrolloff=5 " keep at least 3 cols to the left/right of cursor

set list            " show invisible characters
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set number          " show line numbers


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 5 syntax, highlighting, and spelling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark

if exists("+colorcolumn")
  set colorcolumn=+0,120 " show a line at text width and at 120
end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 6 multiple windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set winheight=10    " current window has an ok height
set winminheight=3  " other open windows have 3 lines showing
set hidden          " hide non-visual windows instead of unloading them

set splitbelow      " new windows are split below
set splitright      " and to the right


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 7 multiple tab pages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showtabline=2   " always show a tabline
" set tabline       " set in tabline.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 8 terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 9 mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 10 printing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 11 messages and info
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd             " show the current command
set showmode            " show the current mode:w
set ruler               " show the in the lower right
set visualbell t_vb=    " use visual bell and make it do nothing


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 12 selecting text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 13 editing text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set textwidth=80        " Where to break lines
set showmatch           " when inserting a bracket, show its match
set matchtime=1         " show match for 1 tenth of a second
set nojoinspaces        " remove 2 spaces after . when joining a line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 14 tabs and indenting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2           " 2 space tabstops
set shiftwidth=2        " 2 space indents
set softtabstop=2       " 2 spaces insert when hitting <Tab>
set expandtab           " always expand tabs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 15 folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax   " use the syntax for folding
set nofoldenable        " default to all folds open


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 16 diff mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 17 mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 18 reading and writing files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set modeline            " allow per file mode lines
set modelines=20        " look in the first 20 lines for a modeline
set endofline           " always have a end of line on the last line
set autowrite           " automatically write files when switching buffers


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 19 the swap file 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile          " no swapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 20 commandline editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" What files to ignore for filename completion
set wildignore+=*.o,*.obj,*~,.git,*.rbc,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar,*.gz,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=vendor/gems/*,vendor/cache/*,.bundle/*
set wildignore+=*.swp,*~,._*

set wildmode=longest:full " move to longest common substr and start wildmenu

if exists("+undofile")
  set undofile              " use an undo file
  set undodir=~/.vimundo    " where to have the undo history
end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 21 executing external commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 22 running make and jumping to errors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 23 language specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" none yet


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 24 multi-byte characters
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 25 various
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
