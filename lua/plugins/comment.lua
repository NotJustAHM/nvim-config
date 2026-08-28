return {
    {
        "numToStr/Comment.nvim",
        event = { "BufReadPost", "BufNewFile" },

        opts = {},

        keys = {
            {
                "gcc",
                function()
                    require("Comment.api").toggle.linewise.current()
                end,
                desc = "Toggle comment",
            },

            {
                "gc",
                mode = "v",
                function()
                    require("Comment.api").toggle.linewise(vim.fn.visualmode())
                end,
                desc = "Toggle comment",
            },
        },
    },
}
