return {
    {
        "stevearc/conform.nvim",

        event = {
            "BufWritePre",
        },

        opts = {
            formatters_by_ft = {
                python = {
                    "ruff_format",
                },

                lua = {
                    "stylua",
                },

                rust = {
                    "rustfmt",
                },

                c = {
                    "clang_format",
                },

                cpp = {
                    "clang_format",
                },

                sh = {
                    "shfmt",
                },

                bash = {
                    "shfmt",
                },

                tex = {
                    "latexindent",
                },
            },

            format_on_save = {
                timeout_ms = 3000,
                lsp_format = "fallback",
            },
        },

        keys = {
            {
                "<leader>cf",
                function()
                    require("conform").format({
                        async = true,
                        lsp_format = "fallback",
                    })
                end,
                mode = { "n", "v" },
                desc = "Format file",
            },
        },
    },
}
