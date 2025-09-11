-- Autocommands converted from settings/autocommands.vim

-- Create augroup for organization
local augroup = vim.api.nvim_create_augroup("VimfilesAutocmds", { clear = true })

-- Make files really need those tabs
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "make",
  command = "set noexpandtab",
  desc = "Use tabs for Makefiles"
})

-- haproxy files are not autodetected
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = augroup,
  pattern = "haproxy*",
  command = "set ft=haproxy",
  desc = "Set filetype for haproxy config files"
})

-- disable color column in quickfix window
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "qf",
  command = "set colorcolumn=",
  desc = "Disable color column in quickfix window"
})
