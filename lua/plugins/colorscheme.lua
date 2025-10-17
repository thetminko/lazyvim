vim.opt.termguicolors = true
vim.opt.background = "dark"

return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
  },

  {
    "olimorris/onedarkpro.nvim",
  },
  {
    "KijitoraFinch/nanode.nvim",
    config = function()
      require("nanode").setup({
        transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nanode",
    },
  },
}
