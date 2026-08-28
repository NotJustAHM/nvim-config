return {
    {
        "folke/trouble.nvim",

        cmd = "Trouble",

        opts = {
            auto_close = true,

            auto_preview = true,

            focus = true,

            follow = true,

            indent_lines = true,

            modes = {
                diagnostics = {
                    mode = "diagnostics",
                    preview = {
                        type = "split",
                        relative = "win",
                        position = "right",
                        size = 0.4,
                    },
                },

                symbols = {
                    mode = "symbols",
                    focus = false,
                    win = {
                        position = "right",
                    },
                },

                lsp = {
                    mode = "lsp",
                    focus = false,
                    win = {
                        position = "right",
                    },
                },
            },
        },

        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics",
            },

            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics",
            },

            {
                "<leader>xs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols",
            },

            {
                "<leader>xl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP",
            },

            {
                "<leader>xq",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix",
            },
        },
    },
}
