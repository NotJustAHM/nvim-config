-- ========================================
-- Autocommands
-- ========================================

local autocmd = vim.api.nvim_create_autocmd

-- Highlight text when yanking
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Return to last cursor position
autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')

        if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(0) then
            vim.api.nvim_win_set_cursor(0, mark)
        end
    end,
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})
