return {
    {
        "nvim-telescope/telescope.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            defaults = {
                prompt_prefix = "   ",
                selection_caret = " ",

                path_display = {
                    "truncate",
                },

                sorting_strategy = "ascending",

                layout_strategy = "horizontal",

                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                    },

                    width = 0.90,
                    height = 0.85,
                },

                file_ignore_patterns = {
                    "%.git/",
                    "node_modules/",
                    "__pycache__/",
                    "%.pyc",
                    ".venv/",
                    "venv/",
                },

                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",

                        ["<C-q>"] = "send_to_qflist",

                        ["<Esc>"] = "close",
                    },

                    n = {
                        ["q"] = "close",

                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },

            pickers = {
                find_files = {
                    hidden = true,
                },

                live_grep = {
                    additional_args = function()
                        return {
                            "--hidden",
                        }
                    end,
                },

                buffers = {
                    sort_lastused = true,
                },
            },
        },

        config = function(_, opts)
            local telescope = require("telescope")

            telescope.setup(opts)

            telescope.load_extension("fzf")
        end,
    },
}
