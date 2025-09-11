return {
  -- File navigation
  {
    "junegunn/fzf",
    dir = "/opt/homebrew/opt/fzf",
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
  },

  -- Update tags files on every save
  "vim-scripts/AutoTag",
  "szw/vim-tags",

  -- Look at all the buffers we have open
  "jlanzarotta/bufexplorer",

  -- Status line
  "itchyny/lightline.vim",

  -- EDITING AND MOVING

  -- Fix '.' so it does the right thing with plugins
  "tpope/vim-repeat",

  -- Comment out lines
  "tpope/vim-commentary",

  -- Deal with pairs
  "tpope/vim-surround",

  -- Add 'end' where it should go
  "tpope/vim-endwise",

  -- Matching do/end etc
  "tmhedberg/matchit",

  -- File manipulation
  "tpope/vim-eunuch",

  -- Copy / paste
  "ibhagwan/smartyank.nvim",

  -- LANGUAGE AND SYNTAX
  
  -- All the languages
  "sheerun/vim-polyglot",

  -- Syntax checking
  "vim-syntastic/syntastic",

  -- Looking at the source code
  "majutsushi/tagbar",

  -- SQL
  "martingms/vipsql",

  -- Rails + extra ruby things language support
  "tpope/vim-rails",
  "joker1007/vim-ruby-heredoc-syntax",

  -- Crystal language
  "vim-crystal/vim-crystal",

  -- CSV files
  "chrisbra/csv.vim",

  -- MISC

  -- Git support
  "tpope/vim-fugitive",
  "tpope/vim-git",
  "airblade/vim-gitgutter",
  "int3/vim-extradite",

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
