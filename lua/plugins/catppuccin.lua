return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        opts = {
            flavour = "mocha",

            background = {
                light = "latte",
                dark = "mocha",
            },

            transparent_background = false,

            term_colors = true,

            integrations = {
                alpha = true,
                bufferline = true,
                fidget = true,
                gitsigns = true,
                lsp_trouble = true,
                mason = true,
                native_lsp = {
                    enabled = true,
                },
                noice = true,
                nvimtree = true,
                telescope = {
                    enabled = true,
                },
                treesitter = true,
                which_key = true,
            },
        },

        config = function(_, opts)
            require("catppuccin").setup(opts)

            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
