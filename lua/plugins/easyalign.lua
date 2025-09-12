return {
  "junegunn/vim-easy-align",
  keys = {
    -- Start interactive EasyAlign in visual mode
    { "<Enter>", "<Plug>(EasyAlign)", mode = "v", desc = "EasyAlign" },

    -- Start interactive EasyAlign with a Vim movement
    { "<leader>a", "<Plug>(EasyAlign)", mode = "n", desc = "EasyAlign with motion" },

    -- Live EasyAlign
    { "<leader><Enter>", "<Plug>(LiveEasyAlign)", mode = "v", desc = "Live EasyAlign" },
    { "<leader><leader>a", "<Plug>(LiveEasyAlign)", mode = "n", desc = "Live EasyAlign with motion" },
  },
}
