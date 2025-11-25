return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --   "mrcjkb/rustaceanvim",
  --   version = "^6",
  --   lazy = false,
  --   ft = { "rust" },
  --   config = function()
  --     vim.g.rustaceanvim = {
  --       -- Plugin configuration
  --       tools = {},
  --       -- LSP configuration
  --       server = {
  --         on_attach = function(client, bufnr)
  --           -- you can also put keymaps in here
  --         end,
  --         default_settings = {
  --           -- rust-analyzer language server configuration
  --           ["rust-analyzer"] = {},
  --         },
  --       },
  --       -- DAP configuration
  --       dap = {},
  --     }
  --     -- TODO
  --   end,
  -- },

  -- {
  --   "sindrets/diffview.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   lazy = false,
  --   -- TODO: Add mappings for diffview commands
  -- },

  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin will only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true, -- if you want to enable the plugin
      message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message,
      -- check the Message template section for more options
      date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
      virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.nvim-treesitter",
  },

  {
    "hedyhli/outline.nvim",
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle Outline" },
    },
    config = function()
      -- Example mapping to toggle outline

      require("outline").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },
}
