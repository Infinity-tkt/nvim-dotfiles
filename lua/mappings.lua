require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "t" }, "<leader><leader>", function()
  require("nvchad.term").toggle { pos = "float", id = "floating_term", size = 1 } end, { noremap = true, desc = "Floating term" })


map({ "n", "t" }, "<leader>gl", function()
  require("nvchad.term").toggle { pos = "float", id = "lazygit_term", size = 1, cmd="lazygit"} end, { noremap = true, desc = "New lazygit term" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
