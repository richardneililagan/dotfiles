-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- use standardrb for ruby autoformatting instead of rubocop
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }),
  callback = function()
    vim.lsp.start({
      name = "standard",
      cmd = { "standardrb", "--lsp" },
    })
  end,
})
