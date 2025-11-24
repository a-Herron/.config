return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        inlay_hints = { enabled = true },
    },
    config = function()
        vim.lsp.config('gopls', {
            settings = {
                gopls = {
                    hints = {
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        compositeLiteralTypes = true,
                        constantValues = true,
                        functionTypeParameters = true,
                        parameterNames = true,
                        rangeVariableTypes = true,
                    }
                }
            }
        })

        vim.lsp.config('vue_ls', {
            -- add filetypes for typescript, javascript and vue
            filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
            init_options = {
              vue = {
                -- disable hybrid mode
                hybridMode = false,
              },
            },
        })

        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
        vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, {desc = "Line Diagnostics"})
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "Rename"})
        vim.keymap.set("n", "K", vim.lsp.buf.hover,{ desc = "Hover"})
        vim.keymap.set("n", "<leader>cs", vim.lsp.buf.signature_help, {desc = "Signature help"})
        vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help, {desc = "Signature help"})
        vim.keymap.set("n", "<leader>uh", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}), {0}) end, { desc = "Toggle inlay hints" })
    end
}
