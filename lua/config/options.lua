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
vim.g.root_spec = { "lsp", { ".git", "package.json", "tsconfig.json" }, "cwd" }
