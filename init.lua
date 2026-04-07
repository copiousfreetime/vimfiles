require("config.lazy")
-- Main Lua configuration entry point
-- This file loads all Lua-based configuration modules

-- Load core configuration modules
require('config.options')
require('config.keymaps')
require('config.autocmds')
require('config.colorscheme')

-- Print confirmation that Lua config is loaded
vim.notify("Lua configuration loaded successfully!", vim.log.levels.INFO)
