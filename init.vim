""" set the root directory for all our vimfiles
""" basic settings first:
source $HOME/.config/nvim/settings/basic.vim

""" load pathogen
execute pathogen#infect()

""" and now, my own settings and mappings:
source $HOME/.config/nvim/settings/colors.vim       " color settings
source $HOME/.config/nvim/settings/editing.vim      " movement and editing
source $HOME/.config/nvim/settings/statusline.vim   " custom statusline
source $HOME/.config/nvim/settings/plugins.vim      " plugin settings
source $HOME/.config/nvim/settings/autocommands.vim " autocommands
source $HOME/.config/nvim/settings/misc.vim         " miscellaneous additional customizations

