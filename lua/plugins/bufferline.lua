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

                numbers = "none",

                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",

                left_mouse_command = "buffer %d",

                indicator = {
                    style = "icon",
                },

                buffer_close_icon = "󰅖",
                modified_icon = "●",
                close_icon = "",
                left_trunc_marker = "",
                right_trunc_marker = "",

                max_name_length = 18,
                max_prefix_length = 15,

                tab_size = 18,

                diagnostics = "nvim_lsp",

                diagnostics_indicator = function(_, _, diagnostics_dict)
                    local s = ""

                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " "
                            or e == "warning" and " "
                            or " "

                        s = s .. sym .. n .. " "
                    end

                    return s
                end,

                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },

                separator_style = "slant",

                always_show_bufferline = true,

                show_buffer_close_icons = true,
                show_close_icon = true,

                color_icons = true,
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
