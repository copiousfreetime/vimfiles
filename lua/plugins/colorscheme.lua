return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },

  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme('sonokai')
  --   end
  -- },


  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
	    vim.cmd.colorscheme('base16-tomorrow-night')
    end
  },
}
