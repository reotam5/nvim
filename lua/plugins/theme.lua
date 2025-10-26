return {
  "ellisonleao/gruvbox.nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.o.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end,
}
