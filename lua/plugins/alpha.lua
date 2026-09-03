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

            -- Get username from the operating system
            local username = os.getenv("USER") or os.getenv("USERNAME") or "User"

            -- Dynamic greeting based on the current time
            local hour = tonumber(os.date("%H"))

            local greeting

            if hour < 12 then
                greeting = "Good morning, " .. username .. "."
            elseif hour < 18 then
                greeting = "Good afternoon, " .. username .. "."
            else
                greeting = "Good evening, " .. username .. "."
            end

            -- Header
            dashboard.section.header.val = {
                "",
                "",
                "          ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
                "          ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
                "          ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
                "          ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                "          ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
                "          ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
                "",
                "",
            }

            -- Buttons
            dashboard.section.buttons.val = {
                dashboard.button(
                    "e",
                    "     New file",
                    "<cmd>ene <bar> startinsert<cr>"
                ),

                dashboard.button(
                    "f",
                    "  󰈞   Find file",
                    "<cmd>Telescope find_files<cr>"
                ),

                dashboard.button(
                    "r",
                    "     Recent files",
                    "<cmd>Telescope oldfiles<cr>"
                ),

                dashboard.button(
                    "g",
                    "  󰊢   Find text",
                    "<cmd>Telescope live_grep<cr>"
                ),

                dashboard.button(
                    "n",
                    "     Neovim config",
                    "<cmd>edit $MYVIMRC<cr>"
                ),

                dashboard.button(
                    "q",
                    "  󰅚   Quit",
                    "<cmd>qa<cr>"
                ),
            }

            -- Footer
            dashboard.section.footer.val = {
                "",
                "",
                greeting,
                "",
                "────────────────────────────────────────",
                "Neovim • " .. os.date("%A, %B %d %Y"),
                "",
            }

            -- Layout
            dashboard.config.layout = {
                { type = "padding", val = 2 },
                dashboard.section.header,
                { type = "padding", val = 2 },
                dashboard.section.buttons,
                { type = "padding", val = 2 },
                dashboard.section.footer,
            }

            return dashboard.config
        end,
    },
}







-------------------------------------------------

-- return {
--     {
--         "goolord/alpha-nvim",
--
--         event = "VimEnter",
--
--         dependencies = {
--             "nvim-tree/nvim-web-devicons",
--         },
--
--         opts = function()
--             local alpha = require("alpha")
--             local dashboard = require("alpha.themes.dashboard")
--
--             dashboard.section.header.val = {
--                 "                                                     ",
--                 " ███╗   ██╗██╗   ██╗██╗███╗   ███╗                   ",
--                 " ████╗  ██║██║   ██║██║████╗ ████║                   ",
--                 " ██╔██╗ ██║██║   ██║██║██╔████╔██║                   ",
--                 " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║                   ",
--                 " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║                   ",
--                 " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                   ",
--                 "                                                     ",
--             }
--
--             dashboard.section.buttons.val = {
--                 dashboard.button(
--                     "e",
--                     "  New file",
--                     "<cmd>ene <BAR> startinsert<cr>"
--                 ),
--
--                 dashboard.button(
--                     "f",
--                     "󰈞  Find file",
--                     "<cmd>Telescope find_files<cr>"
--                 ),
--
--                 dashboard.button(
--                     "r",
--                     "  Recent files",
--                     "<cmd>Telescope oldfiles<cr>"
--                 ),
--
--                 dashboard.button(
--                     "g",
--                     "󰊢  Find text",
--                     "<cmd>Telescope live_grep<cr>"
--                 ),
--
--                 dashboard.button(
--                     "n",
--                     "  Neovim config",
--                     "<cmd>edit $MYVIMRC<cr>"
--                 ),
--
--                 dashboard.button(
--                     "q",
--                     "󰅚  Quit",
--                     "<cmd>qa<cr>"
--                 ),
--             }
--
--             dashboard.section.footer.val = {
--                 "",
--                 "Happy coding, Amir.",
--             }
--
--             return dashboard.config
--         end,
--     },
-- }
