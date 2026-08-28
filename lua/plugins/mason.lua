return {
    {
        "mason-org/mason.nvim",

        lazy = false,

        opts = {
            ui = {
                border = "rounded",

                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            "mason-org/mason.nvim",
        },

        opts = {
            ensure_installed = {
                "basedpyright",
                "lua_ls",
                "clangd",
                -- "bashls",
                "rust_analyzer",
                -- "gopls",
                -- "jsonls",
                -- "yamlls",
                -- "dockerls",
                "texlab",
            },

            automatic_enable = true,
        },
    },
}
