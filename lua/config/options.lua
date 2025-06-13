-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ai_cmp = false
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = true
vim.opt.wrap = true
vim.opt.spell = true
vim.opt.spelllang = { "en" }

return {
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
}
