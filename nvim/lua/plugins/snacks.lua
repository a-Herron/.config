return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        scope = { enabled = true },
        indent = { enabled = true },
        git = { enabled = true },
        statuscolumn = { enabled = true },
        worlds = { enabled = true },
        explorer = {
            enabled = true,
            replace_netrw = true,
        },
        picker = {
            enabled = true,
            sources = {
                explorer = { auto_close = true },
            },
        },
        zen = {
            enabled = true,
            win = {
                width = 120,
                backdrop = {
                    transparent = false,
                },
            },
            toggles = {
                dim = false,
                diagnostics = true,
            },
            zoom = {
                win = {
                    width = 180,
                    backdrop = true
                }
            }
        },
    },
    keys = {
        -- Explorer
        { "<leader>e",  function() Snacks.explorer() end,                    desc = "Open File Explorer" },

        -- find
        { "<leader>ff", function() Snacks.picker.files() end,                desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.git_files() end,            desc = "Find git files" },

        -- git
        { "<leader>gb", function() Snacks.picker.git_branches() end,         desc = "Git Branches" },
        { "<leader>gs", function() Snacks.picker.git_status() end,           desc = "Git Status" },

        -- search
        { "<leader>sg", function() Snacks.picker.grep() end,                 desc = "Grep" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end,          desc = "Search Symbols" },
        { "<leader>sk", function() Snacks.picker.keymaps() end,              desc = "Search Keymaps" },
        { "<leader>sd", function() Snacks.picker.diagnostics() end,          desc = "Search Diagnostics" },
        { "<leader>sq", function() Snacks.picker.qflist() end,               desc = "Search Quick Fix List" },


        -- Picker
        { "<leader>st", function() Snacks.picker.pick("todo_comments") end,  desc = "Search TODO Comments" },

        -- LSP
        { "gd",         function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
        { "gD",         function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
        { "gr",         function() Snacks.picker.lsp_references() end,       nowait = true,                 desc = "Goto References" },
        { "gi",         function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
        { "gt",         function() Snacks.picker.lsp_type_definitions() end, desc = "Goto Type Definition" },
        { "gai",        function() Snacks.picker.lsp_incoming_calls() end,   desc = "Goto Calls Incoming" },
        { "gao",        function() Snacks.picker.lsp_outgoing_calls() end,   desc = "Goto Calls Outgoing" },

        -- Zen
        { "<leader>z",  function() Snacks.zen() end,                         desc = "Toggle Zen Mode" },
    },
}
