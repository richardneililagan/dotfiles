local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
        },

        rubocop = { enabled = false },
        solargraph = { enabled = false },

        -- rubocop = {
        --   cmd = { "bundle", "exec", "rubocop", "--lsp" },
        --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        -- },

        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim", "hs" },
              },
            },
          },
        },

        -- Disable all other JS/TS LSPs aside from the typescript-tools.nvim below.
        -- tsserver = { enabled = true },
        -- ts_ls = { enabled = false },
        -- vtsls = { enabled = false },
      },
    },
  },

  -- This should be a better typescript server than the default vtsls one that comes with lazyvim extras.
  --{
  --  "pmizio/typescript-tools.nvim",
  --  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --  opts = {},
  --},

  -- ### Testing
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        require("neotest-rspec")({
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bin/rspec",
              "--color",
            })
          end,
        }),
      },
    },
  },

  -- ### Linting
  {
    "conform.nvim",
    opts = {
      default_format_opts = {
        timeout_ms = 5000,
      },
      formatters = {
        standardrb = {
          command = "standardrb",
          args = { "--fix", "$FILENAME" },
          stdin = false,
        },
      },
      formatters_by_ft = {
        ruby = { "standardrb" },
      },
    },
  },
}
