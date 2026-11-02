vim.opt.termguicolors = true
vim.opt.background = "dark"

return {
  {
    "KijitoraFinch/nanode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nanode").setup({
        transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "nanode" },
  },
  { "folke/tokyonight.nvim", lazy = true, opts = { transparent = true } },
}
