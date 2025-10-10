return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("everforest").setup({
      background = "medium", -- hard, medium, soft
    })
    vim.o.background = "dark" -- light, dark
    vim.cmd([[colorscheme everforest]])
  end,
}
