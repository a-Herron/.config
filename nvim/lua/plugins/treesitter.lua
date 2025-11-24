return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    lazy = false,
    build = ":TSUpdate",
    opts_extended = { "ensure_installed" },
    opts = {
        indent = { enable = true },
        highlight = { enable = true },
        folds = { enable = true },
        ensure_installed = {
            "bash",
            "c",
            "lua",
            "html",
            "javascript",
            "jsdoc",
            "json",
            "luadoc",
            "markdown",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "yaml",
            "go",
        },
    }
}
