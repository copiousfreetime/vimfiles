return {
  "nvim-treesitter/nvim-treesitter-context",
  enabled = true, -- Enable this plugin (Can be enabled/disabled later via commands) # broken for v12
  opts = {
    multiwindow = true, -- Enable multiwindow support.
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    min_window_height = 32, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    line_numbers = true,
    multiline_threshold = 20, -- Maximum number of lines to show for a single context
    separator = "⎯", -- Separator between context and line number
    trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
  }
}
