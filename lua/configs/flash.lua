local M = {}

M.keys = {
    {
        "s",
        mode = { "n", "x", "o" },
        function()
            require("flash").jump()
        end,
        desc = "Flash",
    },
}

return M
