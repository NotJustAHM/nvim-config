return {
    {
        "rmagatti/auto-session",

        lazy = false,

        opts = {
            auto_restore_enabled = true,
            auto_save_enabled = true,

            auto_session_enable_last_session = false,

            suppressed_dirs = {
                "~/",
                "~/Downloads",
                "/tmp",
            },

            bypass_session_save_file_types = {
                "alpha",
                "dashboard",
                "lazy",
                "mason",
                "NvimTree",
                "TelescopePrompt",
            },
        },

        keys = {
            {
                "<leader>ss",
                "<cmd>SessionSave<cr>",
                desc = "Save session",
            },

            {
                "<leader>sr",
                "<cmd>SessionRestore<cr>",
                desc = "Restore session",
            },

            {
                "<leader>sd",
                "<cmd>SessionDelete<cr>",
                desc = "Delete session",
            },
        },
    },
}
