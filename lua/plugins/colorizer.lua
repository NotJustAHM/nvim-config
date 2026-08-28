return {
    {
        "NvChad/nvim-colorizer.lua",

        event = {
            "BufReadPost",
            "BufNewFile",
        },

        opts = {
            filetypes = {
                "*",
            },

            user_default_options = {
                RGB = true,
                RRGGBB = true,
                names = false,
                RRGGBBAA = true,
                AARRGGBB = false,

                mode = "background",

                tailwind = false,

                css = true,
                css_fn = true,

                sass = {
                    enable = true,
                    parsers = {
                        "css",
                    },
                },

                virtualtext = "■",

                always_update = false,
            },
        },
    },
}
