return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        opts = {
            ensure_installed = {
                -- Programming Languages
                "python",
                "lua",
                "vim",
                "vimdoc",
                "bash",
                "c",
                "cpp",
                "rust",
                --"ruby_lsp",
                "go",
                "javascript",
                "typescript",

                -- Web
                "html",
                "css",
                "json",
                "yaml",

                -- Documentation / Config
                "markdown",
                "markdown_inline",
                "query",

                -- Other
                "regex",
                "toml",
                "git_config",
                "git_rebase",
                "gitcommit",
                "gitignore",

                -- LaTeX
                "latex",
            },

            auto_install = true,
        },

        config = function(_, opts)
            require("nvim-treesitter").setup(opts)

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local ok = pcall(
                        vim.treesitter.start,
                        args.buf
                    )

                    if not ok then
                        return
                    end
                end,
            })
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",

        branch = "main",

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },

        opts = {
            select = {
                enable = true,

                lookahead = true,

                keymaps = {
                    ["af"] = {
                        query = "@function.outer",
                        desc = "Select outer function",
                    },

                    ["if"] = {
                        query = "@function.inner",
                        desc = "Select inner function",
                    },

                    ["ac"] = {
                        query = "@class.outer",
                        desc = "Select outer class",
                    },

                    ["ic"] = {
                        query = "@class.inner",
                        desc = "Select inner class",
                    },
                },
            },

            move = {
                enable = true,

                set_jumps = true,

                goto_next_start = {
                    ["]f"] = {
                        query = "@function.outer",
                        desc = "Next function",
                    },

                    ["]c"] = {
                        query = "@class.outer",
                        desc = "Next class",
                    },
                },

                goto_previous_start = {
                    ["[f"] = {
                        query = "@function.outer",
                        desc = "Previous function",
                    },

                    ["[c"] = {
                        query = "@class.outer",
                        desc = "Previous class",
                    },
                },
            },
        },
    },
}
