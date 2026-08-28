return {
    {
        "nvim-tree/nvim-tree.lua",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            hijack_cursor = true,

            sync_root_with_cwd = true,

            respect_buf_cwd = true,

            view = {
                width = 32,

                side = "left",

                preserve_window_proportions = true,
            },

            renderer = {
                group_empty = true,

                highlight_git = true,

                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },

            filters = {
                dotfiles = false,
                custom = {
                    "^.git$",
                    "__pycache__",
                    "%.pyc$",
                },
            },

            git = {
                enable = true,
                ignore = false,
            },

            diagnostics = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = true,
            },

            update_focused_file = {
                enable = true,
                update_root = true,
            },

            actions = {
                open_file = {
                    quit_on_open = false,
                    resize_window = true,
                },
            },
        },

        config = function(_, opts)
            require("nvim-tree").setup(opts)

            vim.keymap.set(
                "n",
                "<leader>e",
                "<cmd>NvimTreeToggle<CR>",
                {
                    desc = "File Explorer",
                    silent = true,
                }
            )

            vim.keymap.set(
                "n",
                "<leader>E",
                "<cmd>NvimTreeFindFile<CR>",
                {
                    desc = "Find Current File",
                    silent = true,
                }
            )
        end,
    },
}
