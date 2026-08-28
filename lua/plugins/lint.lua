return {
    {
        "mfussenegger/nvim-lint",

        event = {
            "BufReadPre",
            "BufNewFile",
        },

        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                python = {
                    "ruff",
                },

                javascript = {
                    "eslint_d",
                },

                typescript = {
                    "eslint_d",
                },

                javascriptreact = {
                    "eslint_d",
                },

                typescriptreact = {
                    "eslint_d",
                },

                markdown = {
                    "markdownlint",
                },

                sh = {
                    "shellcheck",
                },

                bash = {
                    "shellcheck",
                },

                dockerfile = {
                    "hadolint",
                },
            }

            local lint_augroup = vim.api.nvim_create_augroup(
                "nvim-lint",
                {
                    clear = true,
                }
            )

            vim.api.nvim_create_autocmd(
                {
                    "BufEnter",
                    "BufWritePost",
                    "InsertLeave",
                },
                {
                    group = lint_augroup,

                    callback = function()
                        lint.try_lint()
                    end,
                }
            )

            vim.keymap.set(
                "n",
                "<leader>cl",
                function()
                    lint.try_lint()
                end,
                {
                    desc = "Lint file",
                }
            )
        end,
    },
}
