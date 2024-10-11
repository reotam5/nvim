local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>p", '"_dP')
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')


-- Move insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Move buffers
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "General Save file" })

map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "General Format file" })

map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist" })


-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })


-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "telescope find all files" })


-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
    vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })


-- oil 
vim.keymap.set("n", "<leader>e", "<cmd>Oil --float <CR>", { desc = "open oil" })


-- leap
map({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
map({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')


-- undotree
map('n', '<leader>u', '<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>')


-- tabufline
map("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "buffer goto next" })
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "buffer goto prev" })
map("n", "<leader>q", "<cmd>bd!<cr>", { desc = "buffer close" })


-- diffview
map("n", "<leader>di", function ()
    if require("diffview.lib").get_current_view() == nil then
        vim.cmd("DiffviewOpen")
    else
        vim.cmd("DiffviewClose")
    end
end, { desc = "toggle diffview" })


-- toggleterm
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>")
map("t", "<leader>q", "<cmd>ToggleTermToggleAll<CR>")
map("t", "jk", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })


-- lsp saga
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "code action" })
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "peek definition" })
map("n", "gD", "<cmd>Lspsaga goto_definition<CR>", { desc = "go to definition" })
map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "rename" })
map("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "diagnostic next" })
map("n", "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "diagnostic previous" })

