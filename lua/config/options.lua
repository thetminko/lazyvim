-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim uses blink.cmp by default now, so ai_cmp is obsolete
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = true

-- Text editing preferences
vim.opt.wrap = true
vim.opt.spell = true
vim.opt.spelllang = { "en" }

-- Modern LazyVim options
vim.g.snacks_animate = true
-- Detect root by nearest package.json first (per-package in monorepo), then git root, then lsp
-- "lsp" first in a monorepo causes vtsls to root at the repo root and load all 20+ project references
vim.g.root_spec = { { "package.json", "tsconfig.json" }, ".git", "lsp", "cwd" }

-- Diagnostics: don't update while typing — wait until you stop
vim.diagnostic.config({
  update_in_insert = false,
  severity_sort = true,
})
