return {
    {
        "goolord/alpha-nvim",

        event = "VimEnter",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            dashboard.section.header.val = {
                "                                                     ",
                " ███╗   ██╗██╗   ██╗██╗███╗   ███╗                   ",
                " ████╗  ██║██║   ██║██║████╗ ████║                   ",
                " ██╔██╗ ██║██║   ██║██║██╔████╔██║                   ",
                " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║                   ",
                " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║                   ",
                " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                   ",
                "                                                     ",
            }

            dashboard.section.buttons.val = {
                dashboard.button(
                    "e",
                    "  New file",
                    "<cmd>ene <BAR> startinsert<cr>"
                ),

                dashboard.button(
                    "f",
                    "󰈞  Find file",
                    "<cmd>Telescope find_files<cr>"
                ),

                dashboard.button(
                    "r",
                    "  Recent files",
                    "<cmd>Telescope oldfiles<cr>"
                ),

                dashboard.button(
                    "g",
                    "󰊢  Find text",
                    "<cmd>Telescope live_grep<cr>"
                ),

                dashboard.button(
                    "n",
                    "  Neovim config",
                    "<cmd>edit $MYVIMRC<cr>"
                ),

                dashboard.button(
                    "q",
                    "󰅚  Quit",
                    "<cmd>qa<cr>"
                ),
            }

            dashboard.section.footer.val = {
                "",
                "Happy coding, Amir.",
            }

            return dashboard.config
        end,
    },
}
