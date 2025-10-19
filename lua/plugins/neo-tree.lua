return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      filesystem = {
        hijack_netrw_bheavior = "open_current",
        filtered_items = {
          visible = true, -- Set this to `true`, all "hide" means is 'dimmed out'
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      }
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)

      vim.keymap.set("n", "-", function()
        local reveal_file = vim.fn.expand('%:p')
        if (reveal_file == '') then
          reveal_file = vim.fn.getcwd()
        else
          local f = io.open(reveal_file, "r")
          if (f) then
            f.close(f)
          else
            reveal_file = vim.fn.getcwd()
          end
        end
        require('neo-tree.command').execute({
          action = "focus",          -- OPTIONAL, this is the default value
          source = "filesystem",     -- OPTIONAL, this is the default value
          position = "left",         -- OPTIONAL, this is the default value
          reveal_file = reveal_file, -- path to file or folder to reveal
          reveal_force_cwd = true,   -- change cwd without asking if needed
        })
      end,
      { desc = "Open neo-tree at current file or working directory" }
    )
  end,
  },
}
