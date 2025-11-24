require "nvchad.options"

vim.o.relativenumber = true

vim.o.swapfile = false

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false

vim.o.foldlevelstart = 99 -- Open all folds by default on buffer open
vim.o.foldcolumn = "1" -- Show fold column
vim.o.foldminlines = 1 -- Minimum lines to fold
