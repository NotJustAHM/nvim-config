return {
    {
        "nvim-neotest/neotest",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-neotest/nvim-nio",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-python",
        },

        ft = {
            "python",
        },

        config = function()
            local neotest = require("neotest")

            neotest.setup({
                adapters = {
                    require("neotest-python")({
                        runner = "pytest",
                    }),
                },
            })
        end,

        keys = {
            {
                "<leader>tn",
                function()
                    require("neotest").run.run()
                end,
                desc = "Test: Run nearest",
            },

            {
                "<leader>tf",
                function()
                    require("neotest").run.run(vim.fn.expand("%"))
                end,
                desc = "Test: Run file",
            },

            {
                "<leader>ts",
                function()
                    require("neotest").summary.toggle()
                end,
                desc = "Test: Toggle summary",
            },

            {
                "<leader>to",
                function()
                    require("neotest").output.open({
                        enter = true,
                    })
                end,
                desc = "Test: Open output",
            },

            {
                "<leader>td",
                function()
                    require("neotest").run.run({
                        strategy = "dap",
                    })
                end,
                desc = "Test: Debug nearest",
            },
        },
    },
}
