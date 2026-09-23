return {
    {
        "nvim-lualine/lualine.nvim",

        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                theme = "nightfly",

                globalstatus = true,

                component_separators = {
                    left = "│",
                    right = "│",
                },

                section_separators = {
                    left = "",
                    right = "",
                },

                disabled_filetypes = {
                    statusline = {
                        "alpha",
                        "NvimTree",
                        "TelescopePrompt",
                    },
                },
            },

            sections = {
                lualine_a = {
                    {
                        "mode",
                        fmt = function(str)
                            return str
                        end,
                    },
                },

                lualine_b = {
                    {
                        "branch",
                        icon = "",
                    },

                    "diff",

                    {
                        "diagnostics",
                        symbols = {
                            error = " ",
                            warn = " ",
                            info = " ",
                            hint = "󰌵 ",
                        },
                    },
                },

                lualine_c = {
                    {
                        "filename",
                        path = 1,

                        symbols = {
                            modified = " ●",
                            readonly = " ",
                            unnamed = "[No Name]",
                            newfile = "[New]",
                        },
                    },
                },

                lualine_x = {
                    {
                        "filetype",
                        icon_only = false,
                    },
                },

                lualine_y = {},

                lualine_z = {
                    {
                        "location",
                    },
                },
            },
        },
    },
}
