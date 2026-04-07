return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
  config = function ()

    local ts = require('nvim-treesitter')
    local languages = {
      "awk",
      "bash",
      "bibtex",
      "c",
      "cmake",
      "cpp",
      "crystal",
      "css",
      "csv",
      "cue",
      "d",
      "dart",
      "diff",
      "dockerfile",
      "dot",
      "elixir",
      "elm",
      "erlang",
      "git_config",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go",
      "groovy",
      "hcl",
      "helm",
      "html",
      "java",
      "javascript",
      "jinja",
      "jq",
      "json",
      "json5",
      "julia",
      "just",
      "latex",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "mermaid",
      "perl",
      "php",
      "pony",
      "puppet",
      "python",
      "query",
      "r",
      "regex",
      "rst",
      "ruby",
      "rust",
      "scss",
      "sql",
      "ssh_config",
      "svelte",
      "swift",
      "terraform",
      "tmux",
      "toml",
      "tsx",
      "typescript",
      "typespec",
      "vim",
      "vue",
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
