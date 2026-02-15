-- require("autocmds")

-- Set leader key
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true

-- Highlight ColorColumn
-- vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = "lightblue", guibg = "lightblue" })

-- Key mappings
vim.keymap.set("i", "jj", "<Esc>", { silent = true })          -- Exit insert mode with 'jj'
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })  -- Save file with <leader>w
vim.keymap.set("n", "K", "i<Enter><Esc>", { silent = true })   -- Insert newline in normal mode
vim.keymap.set("n", "<C-n>", ":nohl<CR>", { silent = true })   -- Clear search highlighting
vim.keymap.set("v", "<C-c>", '"*y', { silent = true })         -- Copy to system clipboard in visual mode

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.relativenumber = true
