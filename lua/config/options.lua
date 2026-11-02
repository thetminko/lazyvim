vim.g.lazyvim_eslint_auto_format = true
-- TS7 native language server; uses the repo's own node_modules/.bin/tsc
vim.g.lazyvim_ts_lsp = "tsc"
vim.g.lazyvim_prettier_needs_config = true
vim.g.snacks_animate = true
-- Nearest package.json first: "lsp" first roots at the monorepo root and loads every project reference
vim.g.root_spec = { { "package.json", "tsconfig.json" }, ".git", "lsp", "cwd" }

vim.diagnostic.config({
  update_in_insert = false,
  severity_sort = true,
})

vim.opt.wrap = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.confirm = true
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
