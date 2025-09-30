require("nvchad.options")

local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- Numbers
o.relativenumber = true
-- o.cursorlineopt ='both' -- to enable cursorline!

-- set filetype for .CBL COBOL files.
-- vim.cmd([[ au BufRead,BufNewFile *.CBL set filetype=cobol ]])

o.swapfile = false

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldenable = false

o.foldlevelstart = 99 -- Open all folds by default on buffer open
o.foldcolumn = "1" -- Show fold column
o.foldminlines = 1 -- Minimum lines to fold
