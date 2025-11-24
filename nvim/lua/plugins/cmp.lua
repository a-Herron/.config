return {
    "saghen/blink.cmp",
    version = '1.*',
    dependencies = { 'rafamadriz/friendly-snippets' },
    opts = {
        keymap = {
            preset = 'default',
            ["<Tab>"] = { 'select_and_accept', 'fallback' },
            ["<C-h>"] = { function(cmp) cmp.show() end },
        },
        completion = {
            documentation = { auto_show = true },
            ghost_text = { enabled = false },
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "rust" },
        signature = { enabled = true },

    },
    opts_extend = { "sources.default" },
}
