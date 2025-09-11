-- Utility functions for configuration management

local M = {}

-- File to store the current configuration preference
local config_state_file = vim.fn.stdpath('data') .. '/config_state.txt'

-- Check if Lua config should be used
function M.should_use_lua_config()
  local file = io.open(config_state_file, 'r')
  if file then
    local content = file:read('*a')
    file:close()
    return vim.trim(content) == 'lua'
  end
  -- Default to vimscript if no preference file exists
  return false
end

-- Set configuration preference
function M.set_config_preference(config_type)
  local file = io.open(config_state_file, 'w')
  if file then
    file:write(config_type)
    file:close()
    return true
  end
  return false
end

-- Toggle between Lua and vimscript configurations
function M.toggle_config()
  local current_is_lua = M.should_use_lua_config()
  local new_config = current_is_lua and 'vimscript' or 'lua'
  
  if M.set_config_preference(new_config) then
    local message = string.format(
      'Configuration switched to %s. Please restart Neovim for changes to take effect.',
      new_config:upper()
    )
    vim.notify(message, vim.log.levels.INFO)
    
    -- Offer to restart immediately
    local choice = vim.fn.confirm(
      'Restart Neovim now to apply changes?',
      '&Yes\n&No',
      1
    )
    
    if choice == 1 then
      vim.cmd('qall')
    end
  else
    vim.notify('Failed to toggle configuration', vim.log.levels.ERROR)
  end
end

-- Get current configuration type
function M.get_current_config()
  return M.should_use_lua_config() and 'lua' or 'vimscript'
end

-- Status function for displaying current config in statusline
function M.config_status()
  return M.get_current_config():upper()
end

return M