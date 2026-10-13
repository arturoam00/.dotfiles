return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      current_line_blame = false,
      on_attach = function(buf)
        local gs = require("gitsigns")
        local function m(keys, fn, desc) vim.keymap.set("n", keys, fn, { buffer = buf, desc = desc }) end
        m("]h", function() gs.nav_hunk("next") end, "Next hunk")
        m("[h", function() gs.nav_hunk("prev") end, "Prev hunk")
        m("<leader>hp", gs.preview_hunk, "Preview hunk")
        m("<leader>hs", gs.stage_hunk, "Stage hunk")
        m("<leader>hr", gs.reset_hunk, "Reset hunk")
        m("<leader>hb", gs.blame_line, "Blame line")
        m("<leader>hB", gs.toggle_current_line_blame, "Toggle inline blame")
      end,
    },
  },
}
