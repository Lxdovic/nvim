local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    jsx = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    html = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    rust = { "rustfmt", "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
