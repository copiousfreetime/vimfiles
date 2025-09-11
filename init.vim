""" Configuration Loading Logic
""" Check if Lua config should be used, otherwise fallback to vimscript

" Function to check if we should use Lua config
function! ShouldUseLuaConfig()
  let config_state_file = stdpath('data') . '/config_state.txt'
  if filereadable(config_state_file)
    let content = trim(readfile(config_state_file)[0])
    return content ==# 'lua'
  endif
  " Default to vimscript if no preference file exists
  return 0
endfunction

" Load appropriate configuration
if ShouldUseLuaConfig()
  """ Using Lua configuration
  lua require('config')
  echo "Loaded Lua configuration"
else
  """ Using vimscript configuration
  """ set the root directory for all our vimfiles
  """ basic settings first:
  source $HOME/.config/nvim/settings/basic.vim

  """ load plugins
  source $HOME/.config/nvim/settings/load-plugins.vim

  """ load pathogen
  " execute pathogen#infect()

  """ and now, my own settings and mappings:
  source $HOME/.config/nvim/settings/functions.vim    " Personal functions
  source $HOME/.config/nvim/settings/colors.vim       " color settings
  source $HOME/.config/nvim/settings/editing.vim      " movement and editing
  source $HOME/.config/nvim/settings/statusline.vim   " custom statusline
  source $HOME/.config/nvim/settings/plugins.vim      " plugin settings
  source $HOME/.config/nvim/settings/autocommands.vim " autocommands
  source $HOME/.config/nvim/settings/misc.vim         " miscellaneous additional customizations
  
  echo "Loaded vimscript configuration"
endif

""" Configuration Toggle Commands (available in both configs)
" Toggle between Lua and vimscript configurations
command! ToggleConfig lua require('utils').toggle_config()

" Show current configuration type
command! ConfigStatus lua print('Current config: ' .. require('utils').get_current_config():upper())

" Force switch to Lua config
command! UseLuaConfig lua require('utils').set_config_preference('lua'); print('Lua config will be used on next restart')

" Force switch to vimscript config  
command! UseVimscriptConfig lua require('utils').set_config_preference('vimscript'); print('Vimscript config will be used on next restart')
