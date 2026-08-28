return {
    {
        "nvim-lualine/lualine.nvim",

        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                theme = "auto",

                globalstatus = true,

                component_separators = {
                    left = "",
                    right = "",
                },

                section_separators = {
                    left = "",
                    right = "",
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
                            return str:sub(1, 1)
                        end,
                    },
                },

                lualine_b = {
                    {
                        "branch",
                        icon = "",
                    },
                    "diff",
                    "diagnostics",
                },

                lualine_c = {
                    {
                        "filename",
                        path = 1,
                    },
                },

                lualine_x = {
                    "encoding",
                    "fileformat",
                    "filetype",
                },

                lualine_y = {
                    "progress",
                },

                lualine_z = {
                    "location",
                },
            },
        },
    },
}
