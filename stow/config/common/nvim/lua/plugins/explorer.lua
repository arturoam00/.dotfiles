return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "echasnovski/mini.nvim" },
    keys = { { "-", "<cmd>Oil<cr>", desc = "File explorer (parent dir)" } },
    opts = { view_options = { show_hidden = true } },
  },
}
