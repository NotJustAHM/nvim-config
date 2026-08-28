return {
    {
        "tpope/vim-fugitive",

        cmd = {
            "Git",
            "G",
            "Gdiffsplit",
            "Gvdiffsplit",
            "Gread",
            "Gwrite",
            "Ggrep",
        },

        keys = {
            {
                "<leader>gg",
                "<cmd>Git<cr>",
                desc = "Git Status",
            },

            {
                "<leader>gc",
                "<cmd>Git commit<cr>",
                desc = "Git Commit",
            },

            {
                "<leader>gp",
                "<cmd>Git push<cr>",
                desc = "Git Push",
            },

            {
                "<leader>gl",
                "<cmd>Git pull<cr>",
                desc = "Git Pull",
            },

            {
                "<leader>gd",
                "<cmd>Gdiffsplit<cr>",
                desc = "Git Diff",
            },

            {
                "<leader>gb",
                "<cmd>Git blame<cr>",
                desc = "Git Blame",
            },

            {
                "<leader>gr",
                "<cmd>Gread<cr>",
                desc = "Git Read",
            },

            {
                "<leader>gw",
                "<cmd>Gwrite<cr>",
                desc = "Git Write",
            },

            {
                "<leader>gB",
                "<cmd>Git branch<cr>",
                desc = "Git Branches",
            },

            {
                "<leader>gf",
                "<cmd>Git fetch<cr>",
                desc = "Git Fetch",
            },

            {
                "<leader>gm",
                "<cmd>Git merge<cr>",
                desc = "Git Merge",
            },
        },
    },
}
