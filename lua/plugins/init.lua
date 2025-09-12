return {
  -- File navigation
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Update tags files on every save
  "vim-scripts/AutoTag",
  "szw/vim-tags",

  -- Buffer management
  {
    "akinsho/bufferline.nvim",
    version = "*", 
    dependencies = "nvim-tree/nvim-web-devicons"
  },

  -- EDITING AND MOVING

  -- Fix '.' so it does the right thing with plugins
  "tpope/vim-repeat",

  -- Comment out lines
  "numToStr/Comment.nvim",

  -- Deal with pairs
  "kylechui/nvim-surround",

  -- Add 'end' where it should go
  "tpope/vim-endwise",

  -- Matching do/end etc
  "tmhedberg/matchit",

  -- File manipulation
  "tpope/vim-eunuch",

  -- Copy / paste
  "ibhagwan/smartyank.nvim",

  -- LANGUAGE AND SYNTAX

  "neovim/nvim-lspconfig",
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Code outline
  {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  -- Rails + extra ruby things language support
  "tpope/vim-rails",
  "joker1007/vim-ruby-heredoc-syntax",

  -- Crystal language
  "vim-crystal/vim-crystal",

  -- MISC

  -- Git support
  "tpope/vim-fugitive",
  "tpope/vim-git",
  "lewis6991/gitsigns.nvim",

  -- Gists
  "mattn/gist-vim",

  -- Robots
  "zbirenbaum/copilot.lua",
  "nvim-lua/plenary.nvim",

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
  },

  "folke/snacks.nvim",
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
  },
}
