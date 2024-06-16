-- this file returns a lua "table", which is sort of like a list
-- in this case this file returns a list of plugins that lazy.nvim should install
-- this list will be imported into "init.lua" where lazy.nvim is configured

return {
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

