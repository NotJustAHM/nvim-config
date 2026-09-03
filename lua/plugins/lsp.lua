return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "mason.nvim",
            "mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },

        event = {
            "BufReadPre",
            "BufNewFile",
        },

        config = function()
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities()

            -- Python
            vim.lsp.config("basedpyright", {
                capabilities = capabilities,

                settings = {
                    basedpyright = {
                        analysis = {
                            typeCheckingMode = "standard",

                            autoSearchPaths = true,

                            useLibraryCodeForTypes = true,

                            diagnosticMode = "workspace",
                        },
                    },
                },
            })

            -- Lua
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,

                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },

                        diagnostics = {
                            globals = {
                                "vim",
                            },
                        },

                        workspace = {
                            checkThirdParty = false,

                            library = vim.api.nvim_get_runtime_file(
                                "",
                                true
                            ),
                        },

                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })

            -- C / C++
            vim.lsp.config("clangd", {
                capabilities = capabilities,
            })

            -- Ruby
            vim.lsp.config("ruby_lsp", {
                capabilities = capabilities,
            })

            -- Bash
            -- vim.lsp.config("bashls", {
            --     capabilities = capabilities,
            -- })
            --
            -- Rust
            vim.lsp.config("rust_analyzer", {
                capabilities = capabilities,
            })
            --
            -- -- Go
            -- vim.lsp.config("gopls", {
            --     capabilities = capabilities,
            -- })
            --
            -- -- JSON
            -- vim.lsp.config("jsonls", {
            --     capabilities = capabilities,
            -- })
            --
            -- -- YAML
            -- vim.lsp.config("yamlls", {
            --     capabilities = capabilities,
            -- })
            --
            -- -- Docker
            -- vim.lsp.config("dockerls", {
            --     capabilities = capabilities,
            -- })
            --
            -- LaTeX
            vim.lsp.config("texlab", {
                capabilities = capabilities,
            })
        end,
    },
}
