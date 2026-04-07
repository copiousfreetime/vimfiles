return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
  config = function ()

    local ts = require('nvim-treesitter')
    local languages = {
      "bash",
      "c",
      "crystal",
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

    vim.api.nvim_create_autocmd('User', {
      pattern   = 'TSUpdate',
      callback  = function ()
        require('nvim-treesitter.parsers').crystal = {
          install_info = {
            url                 = 'https://github.com/crystal-lang-tools/tree-sitter-crystal',
            generate            = false,
            generate_from_json  = false,
            queries             = 'queries/nvim'
          }
        }
      end
    })
    vim.treesitter.language.register('crystal', { 'cr' })

    ts.setup()
    ts.install(languages)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = languages,
      callback = function ()
        vim.treesitter.start()

        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    })
  end
}
