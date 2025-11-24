require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.api.nvim_set_keymap(
  "n",
  "<leader>ca",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  { noremap = true, silent = true, desc = "Code Actions" }
)

-- vim.o.mouse = ""

local opts = { noremap = true, silent = true }

-- Normal mode
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", opts)
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", opts)
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", opts)
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", opts)

vim.api.nvim_set_keymap("n", "za", "za", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zc", "zc", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zo", "zo", { noremap = true, silent = true })

-- Insert mode
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", opts)
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", opts)
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", opts)
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", opts)

-- Visual mode
vim.api.nvim_set_keymap("v", "<Up>", "<Nop>", opts)
vim.api.nvim_set_keymap("v", "<Down>", "<Nop>", opts)
vim.api.nvim_set_keymap("v", "<Left>", "<Nop>", opts)
vim.api.nvim_set_keymap("v", "<Right>", "<Nop>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
