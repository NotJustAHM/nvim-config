return {
    {
        "shellRaining/hlchunk.nvim",

        event = {
            "BufReadPost",
            "BufNewFile",
        },

        opts = {
            chunk = {
                enable = true,
            },

            indent = {
                enable = true,

                chars = {
                    "│",
                },
            },

            line_num = {
                enable = false,
            },

            blank = {
                enable = false,
            },
        },
    },
}
