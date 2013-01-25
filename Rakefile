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

### Color schemes
plugin "solarized", "https://github.com/altercation/vim-colors-solarized.git"
plugin "tomorrow-night", "https://github.com/chriskempson/vim-tomorrow-theme.git"

### EDITING AND MOVING

### LANGUAGE AND SYNTAX


### MISC
