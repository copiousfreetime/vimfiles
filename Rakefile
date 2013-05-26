load "plugins.rake"

### CORE

plugin "pathogen",  "https://github.com/tpope/vim-pathogen.git" do
  pgen   = File.expand_path( "autoload/pathogen.vim" )
  aload  = File.expand_path( "../../autoload" )
  dest   = File.join( aload, "pathogen.vim" )
  if not File.exist?( dest ) then
    puts "linking pathogen.vim"
    ln_s(pgen, aload)
  end
end

# file navigation
plugin 'ctrlp', 'https://github.com/kien/ctrlp.vim.git'

# update tags files on every save
plugin "autotag", "https://github.com/vim-scripts/AutoTag.git"
plugin "ack", "https://github.com/mileszs/ack.vim.git"

# look at all the buffers we have open
plugin 'bufexplorer', 'https://github.com/vim-scripts/bufexplorer.zip.git'

### Color schemes
plugin "solarized", "https://github.com/altercation/vim-colors-solarized.git"
plugin "tomorrow-night", "https://github.com/chriskempson/vim-tomorrow-theme.git"

### EDITING AND MOVING

# fix '.' so it does the right thing with plugins
plugin 'repeat',  'https://github.com/tpope/vim-repeat.git'

# comment out lines
plugin 'commentary',  'https://github.com/tpope/vim-commentary.git'

# deal with pairs
plugin 'surround', 'https://github.com/tpope/vim-surround.git'

# add 'end' where it should go
plugin "endwise", "https://github.com/tpope/vim-endwise.git"

# matching do/end etc
plugin 'matchit', 'https://github.com/edsono/vim-matchit.git'

# Align things up neatly
plugin 'align', 'https://github.com/tsaleh/vim-align.git'

### LANGUAGE AND SYNTAX
# syntax checking
plugin 'syntastic', 'https://github.com/scrooloose/syntastic.git'
plugin 'scala', 'https://github.com/derekwyatt/vim-scala.git'

# looking at the source code
plugin 'tagbar', 'https://github.com/majutsushi/tagbar.git'

# ruby language support
plugin "vim-ruby", "https://github.com/vim-ruby/vim-ruby.git"
plugin "puppet", "https://github.com/ajf/puppet-vim.git"
plugin "rails", "https://github.com/tpope/vim-rails.git"
plugin "rspec", "https://github.com/taq/vim-rspec.git"
plugin "sinatra", "https://github.com/hallison/vim-ruby-sinatra.git"

# csv files
plugin 'csv', 'https://github.com/vim-scripts/csv.vim.git'

# markdown
plugin "markdown", "https://github.com/tpope/vim-markdown.git"

# textile
plugin "textile", "https://github.com/timcharper/textile.vim.git"

# ledger
plugin "ledger", "https://github.com/ledger/vim-ledger.git"

### MISC

# Git support
plugin "fugitive", "https://github.com/tpope/vim-fugitive.git"
plugin 'git', 'https://github.com/tpope/vim-git.git'

# Gists
plugin 'gist', 'https://github.com/mattn/gist-vim.git'

# note taking
plugin 'calendar', 'https://github.com/mattn/calendar-vim.git'
plugin 'vimwiki', 'https://github.com/vim-scripts/vimwiki.git'
