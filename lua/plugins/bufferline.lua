return {
    {
        "akinsho/bufferline.nvim",

        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                mode = "buffers",

                numbers = "buffer_id",


                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",
                left_mouse_command = "buffer %d",

                indicator = {
                    style = "icon",
                },

                modified_icon = "●",

                left_trunc_marker = "",
                right_trunc_marker = "",

                max_name_length = 24,
                max_prefix_length = 15,

                tab_size = 20,

                diagnostics = "nvim_lsp",

                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,

                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "center",
                        separator = true,
                    },
                },

                separator_style = "thin",

                always_show_bufferline = true,

                show_buffer_close_icons = false,
                show_close_icon = false,

                color_icons = false,

                enforce_regular_tabs = false,
                persist_buffer_sort = true,

                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { "close" },
                },
            },
        },

        keys = {
            {
                "<S-h>",
                "<cmd>BufferLineCyclePrev<cr>",
                desc = "Previous Buffer",
            },

            {
                "<S-l>",
                "<cmd>BufferLineCycleNext<cr>",
                desc = "Next Buffer",
            },

            {
                "<leader>bp",
                "<cmd>BufferLinePick<cr>",
                desc = "Pick Buffer",
            },

            {
                "<leader>bc",
                "<cmd>bdelete<cr>",
                desc = "Close Buffer",
            },
        },
    },
}
