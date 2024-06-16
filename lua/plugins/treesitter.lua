return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup({
            -- the treesitter parsers to install
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "css",
                "csv",
                "diff",
                "dockerfile",
                "go",
                "html",
                "java",
                "javascript",
                "jq",
                "jsdoc",
                "json",
                "json5",
                "lua",
                "markdown",
                "nix",
                "python",
                "regex",
                "rust",
                "scss",
                "sql",
                "tmux",
                "toml",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            },

            -- turn on highlighting and indenting
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
