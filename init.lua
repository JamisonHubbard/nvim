-- leader key is set to space key
vim.g.mapleader = " "

-- tab space config
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- check if lazy.nvim already exists at the expected path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not, install lazy.nvim
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable branch
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- the plugins variable contains config for plugins we want to be installed
-- so that we can pass this list to lazy.nvim below and it will manage them
local plugins = {
    -- install the tokyonight colorscheme
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, },

    -- install the telescope plugin
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        -- install plenary.nvim as well, which is sort of a utility library that
        -- telescope depends on
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- install treesitter plugin
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- install neotree plugin
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        -- install these plugins as dependencies of neotree
        dependencies = {
            "nvim-lua/plenary.nvim", -- utility functions for neovim
            "nvim-tree/nvim-web-devicons", -- supports nerd font icons
            "MunifTanjim/nui.nvim", -- ui component library for neovim
            "3rd/image.nvim", -- supports image previews in neovim
        },
    },
}

-- unclear what opts are for, but they are also passed as an arg to lazy.nvim
local opts = {}

-- call the setup function for lazy.nvim
require("lazy").setup(plugins, opts)

-- set keybinds for the telescope plugin
-- here we are accessing the lua module within telescope called "builtin" and
-- pointing vim at some of its exported functions when we do certain key commands
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- "find files"
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- "find with grep"

-- set keybinds for neotree plugin
-- here we set the keybind to the exact console command we would use
-- note: we explicitly place a carriage-return at the end of the command so it runs
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", {})

-- configure treesitter plugin
-- here we are accessing the "configs" module in the treesitter plugin and calling
-- its "setup" function
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

-- call the setup function for the tokyonight color scheme
require("tokyonight").setup({ style = "storm" })
-- then set it as the colorscheme
vim.cmd.colorscheme "tokyonight"
