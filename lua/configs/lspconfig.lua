require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "rust_analyzer" }

vim.lsp.enable(servers)

vim.lsp.config["rust_analyzer"] = {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}

-- read :h vim.lsp.config for changing options of lsp servers
