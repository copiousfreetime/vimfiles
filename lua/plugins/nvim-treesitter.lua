local ensure_installed = {
  "bash",
  "c",
  "css",
  "csv",
  "dart",
  "diff",
  "elixir",
  "elm",
  "erlang",
  "git_config",
  "gitcommit",
  "gitignore",
  "go",
  "html",
  "javascript",
  "jq",
  "json",
  "json5",
  "lua",
  "make",
  "markdown",
  "markdown_inline",
  "mermaid",
  "perl",
  "php",
  "python",
  "query",
  "ruby",
  "regex",
  "sql",
  "ssh_config",
  "terraform",
  "tmux",
  "toml",
  "tsx",
  "typescript",
  "typespec",
  "vim",
  "xml",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      -- Install any missing parsers from ensure_installed list
      local installed = require("nvim-treesitter").get_installed()
      local installed_set = {}
      for _, lang in ipairs(installed) do
        installed_set[lang] = true
      end

      local missing = {}
      for _, lang in ipairs(ensure_installed) do
        if not installed_set[lang] then
          table.insert(missing, lang)
        end
      end

      if #missing > 0 then
        require("nvim-treesitter").install(missing)
      end
    end,
  },
}
