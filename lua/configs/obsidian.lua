require("obsidian").setup {
    workspaces = {
        {
            name = "notes",
            path = "~/Code/notes",
        },
    },
    ui = {
        enabled = false,
    },
    follow_url_func = function(url)
        vim.fn.jobstart { "open", url }
    end,
    follow_img_func = function(img)
        vim.fn.jobstart { "qlmanage", "-p", img }
    end,
}
