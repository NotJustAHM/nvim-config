return {
    {
        "lervag/vimtex",

        ft = {
            "tex",
            "plaintex",
        },

        init = function()
            -- Compiler
            vim.g.vimtex_compiler_method = "latexmk"

            -- PDF Viewer
            vim.g.vimtex_view_method = "zathura"

            -- Don't open QuickFix automatically
            vim.g.vimtex_quickfix_mode = 0

            -- Syntax
            vim.g.vimtex_syntax_enabled = 1

            -- Don't use conceal too aggressively
            vim.g.vimtex_syntax_conceal_disable = 1

            -- Compiler options
            vim.g.vimtex_compiler_latexmk = {
                executable = "latexmk",
                options = {
                    "-xelatex",
                    "-interaction=nonstopmode",
                    "-synctex=1",
                    "-file-line-error",
                },
            }

            -- PDF viewer options
            vim.g.vimtex_view_general_viewer = "zathura"

            -- Don't automatically open the PDF viewer
            vim.g.vimtex_view_automatic = 0

            -- Clean auxiliary files when using VimTeX clean
            vim.g.vimtex_compiler_clean_after_main = 1

            -- Better folding
            vim.g.vimtex_fold_enabled = 1
        end,
    },
}
