return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
            "jay-babu/mason-nvim-dap.nvim",
        },

        keys = {
            {
                "<F5>",
                function()
                    require("dap").continue()
                end,
                desc = "Debug: Start/Continue",
            },

            {
                "<F10>",
                function()
                    require("dap").step_over()
                end,
                desc = "Debug: Step Over",
            },

            {
                "<F11>",
                function()
                    require("dap").step_into()
                end,
                desc = "Debug: Step Into",
            },

            {
                "<F12>",
                function()
                    require("dap").step_out()
                end,
                desc = "Debug: Step Out",
            },

            {
                "<leader>db",
                function()
                    require("dap").toggle_breakpoint()
                end,
                desc = "Debug: Toggle Breakpoint",
            },

            {
                "<leader>dB",
                function()
                    require("dap").set_breakpoint(
                        vim.fn.input("Breakpoint condition: ")
                    )
                end,
                desc = "Debug: Conditional Breakpoint",
            },

            {
                "<leader>dr",
                function()
                    require("dap").repl.open()
                end,
                desc = "Debug: REPL",
            },

            {
                "<leader>dq",
                function()
                    require("dap").terminate()
                end,
                desc = "Debug: Terminate",
            },
        },

        config = function()
            local dap = require("dap")

            dap.set_log_level("WARN")
        end,
    },

    {
        "rcarriga/nvim-dap-ui",

        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },

        opts = {
            layouts = {
                {
                    elements = {
                        "scopes",
                        "breakpoints",
                        "stacks",
                        "watches",
                    },

                    size = 40,

                    position = "left",
                },

                {
                    elements = {
                        "repl",
                        "console",
                    },

                    size = 10,

                    position = "bottom",
                },
            },

            floating = {
                border = "rounded",
            },

            controls = {
                enabled = true,
            },
        },

        config = function(_, opts)
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup(opts)

            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end

            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },

    {
        "jay-babu/mason-nvim-dap.nvim",

        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },

        opts = {
            ensure_installed = {
                "debugpy",
            },

            automatic_installation = true,
        },
    },
}
