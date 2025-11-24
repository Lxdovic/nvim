local lint = require "lint"

lint.linters_by_ft = {
  lua = { "luacheck" },
  typescript = { "eslint_d" },
  javascript = { "eslint_d" },
  tsx = { "eslint_d" },
  rust = { "clippy" },
  python = { "flake8" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
