return {
    {
        "RRethy/vim-illuminate",

        event = {
            "BufReadPost",
            "BufNewFile",
        },

        init = function()
            vim.g.Illuminate_delay = 100

            vim.g.Illuminate_ftblacklist = {
                "alpha",
                "dashboard",
                "NvimTree",
                "TelescopePrompt",
                "Trouble",
                "lazy",
                "mason",
            }

            vim.g.Illuminate_highlightUnderCursor = 1
        end,
    },
}
