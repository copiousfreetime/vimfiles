-- Key mappings converted from settings/editing.vim

-- Toggle line numbers
vim.keymap.set('n', '<Leader>n', '<cmd>set number!<CR>', { desc = "Toggle line numbers" })

-- Toggle paste mode
vim.keymap.set('n', '<Leader>p', '<cmd>set paste!<CR>', { desc = "Toggle paste mode" })

-- Strip leading tabs and trailing whitespace
vim.api.nvim_create_user_command('Tr', function()
  vim.cmd('%s/\\s\\+$//ge | retab | nohlsearch')
end, { desc = "Strip trailing whitespace and retab" })

-- Tab movement
vim.keymap.set('n', 'tn', '<cmd>tabnext<CR>', { desc = "Next tab" })
vim.keymap.set('n', 'tp', '<cmd>tabprevious<CR>', { desc = "Previous tab" })

-- Clear search highlight
vim.keymap.set('n', '<Leader><Space>', '<cmd>noh<CR>', { desc = "Clear search highlight" })

-- Move to matching bracket pairs
vim.keymap.set('n', '<tab>', '%', { desc = "Move to matching bracket" })
vim.keymap.set('v', '<tab>', '%', { desc = "Move to matching bracket" })

-- Prevent hitting f1 while going for ESC
vim.keymap.set('i', '<F1>', '<ESC>', { desc = "ESC alternative" })
vim.keymap.set('n', '<F1>', '<ESC>', { desc = "ESC alternative" })
vim.keymap.set('v', '<F1>', '<ESC>', { desc = "ESC alternative" })

-- Hit ; instead of : for commands
vim.keymap.set('n', ';', ':', { desc = "Command mode shortcut" })

-- jj or kk instead of hitting escape to get out of insert mode
vim.keymap.set('i', 'kk', '<ESC>', { desc = "ESC alternative" })
vim.keymap.set('i', 'jj', '<ESC>', { desc = "ESC alternative" })
