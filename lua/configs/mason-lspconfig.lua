local mason_lspconfig = require("mason-lspconfig")
local servers = vim.lsp.config.servers

local available = mason_lspconfig.get_available_servers()

local to_install = vim.tbl_filter(function(server)
    return vim.tbl_contains(available, server)
end, servers)

mason_lspconfig.setup({
    ensure_installed = to_install,
    automatic_installation = false,
})
