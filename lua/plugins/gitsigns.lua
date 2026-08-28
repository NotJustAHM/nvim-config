return {
    {
        "lewis6991/gitsigns.nvim",

        event = {
            "BufReadPre",
            "BufNewFile",
        },

        opts = {
            signs = {
                add = {
                    text = "│",
                },

                change = {
                    text = "│",
                },

                delete = {
                    text = "_",
                },

                topdelete = {
                    text = "‾",
                },

                changedelete = {
                    text = "~",
                },

                untracked = {
                    text = "┆",
                },
            },

            current_line_blame = false,

            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, lhs, rhs, desc)
                    vim.keymap.set(
                        mode,
                        lhs,
                        rhs,
                        {
                            buffer = bufnr,
                            desc = desc,
                        }
                    )
                end

                map(
                    "n",
                    "]g",
                    gs.next_hunk,
                    "Next Git hunk"
                )

                map(
                    "n",
                    "[g",
                    gs.prev_hunk,
                    "Previous Git hunk"
                )

                map(
                    "n",
                    "<leader>gp",
                    gs.preview_hunk,
                    "Preview Git hunk"
                )

                map(
                    "n",
                    "<leader>gr",
                    gs.reset_hunk,
                    "Reset Git hunk"
                )

                map(
                    "n",
                    "<leader>gs",
                    gs.stage_hunk,
                    "Stage Git hunk"
                )

                map(
                    "n",
                    "<leader>gu",
                    gs.undo_stage_hunk,
                    "Undo stage hunk"
                )

                map(
                    "n",
                    "<leader>gb",
                    gs.blame_line,
                    "Git blame line"
                )

                map(
                    "n",
                    "<leader>gd",
                    gs.diffthis,
                    "Git diff"
                )
            end,
        },
    },
}
