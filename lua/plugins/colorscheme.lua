return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        lazy = false,

        opts = {
            flavour = "mocha",

            transparent_background = false,

            term_colors = true,

            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
                which_key = true,
                mason = true,

                native_lsp = {
                    enabled = true,

                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },

                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
            },
        },

        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
