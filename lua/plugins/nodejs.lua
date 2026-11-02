return {
  -- Package.json management
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("package-info").setup()
    end,
    keys = {
      { "<leader>Ns", "<cmd>lua require('package-info').show()<cr>", desc = "Show package info" },
      { "<leader>Nc", "<cmd>lua require('package-info').hide()<cr>", desc = "Hide package info" },
      { "<leader>Nt", "<cmd>lua require('package-info').toggle()<cr>", desc = "Toggle package info" },
      { "<leader>Nu", "<cmd>lua require('package-info').update()<cr>", desc = "Update package" },
      { "<leader>Nd", "<cmd>lua require('package-info').delete()<cr>", desc = "Delete package" },
      { "<leader>Ni", "<cmd>lua require('package-info').install()<cr>", desc = "Install package" },
      { "<leader>Np", "<cmd>lua require('package-info').change_version()<cr>", desc = "Change package version" },
    },
  },
}
