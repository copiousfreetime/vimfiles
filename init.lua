require("config.lazy")
-- Main Lua configuration entry point
-- This file loads all Lua-based configuration modules

-- Load core configuration modules
require('config.options')
require('config.keymaps')
require('config.autocmds')
require('config.colorscheme')

-- Load custom statusline (optional - lightline.vim is also configured)
-- Uncomment the line below if you prefer the custom statusline over lightline
-- require('config.statusline').setup()

-- Print confirmation that Lua config is loaded
vim.notify("Lua configuration loaded successfully!", vim.log.levels.INFO)
