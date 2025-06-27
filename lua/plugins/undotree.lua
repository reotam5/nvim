-- install undotree plugin
return {
  "mbbill/undotree",
  event = "VeryLazy",
  cmd = { "UndotreeToggle", "UndotreeFocus" },
  dependencies = {
    "folke/which-key.nvim",
  },
  keys = {
    { "<leader>cu", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
  },
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SplitWidth = 35
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
