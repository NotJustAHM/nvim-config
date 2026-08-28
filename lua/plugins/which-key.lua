return {
    {
        "folke/which-key.nvim",

        event = "VeryLazy",

        opts = {},

        config = function(_, opts)
            local wk = require("which-key")

            wk.setup(opts)

            wk.add({
                { "<leader>f",  group = "Find" },
                { "<leader>g",  group = "Git" },
                { "<leader>c",  group = "Code" },
                { "<leader>b",  group = "Buffer" },
                { "<leader>h",  group = "Harpoon" },
                { "<leader>s",  group = "Session" },
                { "<leader>t",  group = "Test" },
                { "<leader>x",  group = "Trouble" },
                { "<leader>u",  desc = "UndoTree" },
                { "<leader>d>", group = "Debug" },
                { "<leader>l",  group = "LaTeX" },
            })
        end,
    },
}
