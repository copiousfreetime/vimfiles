local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.crystal = {
  install_info = {
    url = "~/repos/github.com/crystal-lang-tools/tree-sitter-crystal",
    files = {"src/parser.c", "src/scanner.c"},
    branch = "main",
  },
  filetype = "cr",
}
