return {
  "projekt0n/github-nvim-theme",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({})
    vim.cmd([[colorscheme github_dark_default]])
  end,
}
