-- ========================================
-- LSP Keymaps
-- ========================================
vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        prefix = "●",
    },

    signs = true,

    underline = true,

    update_in_insert = false,

    severity_sort = true,

    float = {
        border = "rounded",

        source = "if_many",

        header = "",
        prefix = "",
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = {
            buffer = event.buf,
            silent = true,
        }

        local map = vim.keymap.set

        -- Navigation
        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "gD", vim.lsp.buf.declaration, opts)
        map("n", "gr", vim.lsp.buf.references, opts)
        map("n", "gi", vim.lsp.buf.implementation, opts)

        -- Information
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "<C-k>", vim.lsp.buf.signature_help, opts)

        -- Code actions
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)

        -- Formatting
        map("n", "<leader>lf", function()
            vim.lsp.buf.format({
                async = true,
            })
        end, opts)

        -- Diagnostics
        map("n", "<leader>ld", vim.diagnostic.open_float, opts)
        map("n", "[d", vim.diagnostic.goto_prev, opts)
        map("n", "]d", vim.diagnostic.goto_next, opts)

        -- Workspace
        map("n", "<leader>lwa", vim.lsp.buf.add_workspace_folder, opts)
        map("n", "<leader>lwr", vim.lsp.buf.remove_workspace_folder, opts)
        map("n", "<leader>lwl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
    end,
})
