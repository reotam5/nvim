return {
  "EdenEast/nightfox.nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("nightfox").setup({})
    vim.cmd([[colorscheme dayfox]])
  end,
}
