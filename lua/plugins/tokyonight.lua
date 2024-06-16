-- this file returns a lua "table", which is the {} syntax
-- this table defines a plugin for lazy.nvim to install and load
-- lazy.nvim will automatically find and use this file because it has been placed in the special
-- location "lua/plugins/"
-- additionally, lazy.nvim will automatically call the "setup()" function for the plugin once it
-- is loaded, meaning we don't have to

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    -- opts are values passed to the setup() function of the plugin when it is loaded by lazy.nvim
    opts = { style = "storm" },

    -- the 'config' property of the lua table is a special property
    -- lazy vim will run this function once the plugin has been installed
    config = function()
        vim.cmd.colorscheme "tokyonight"
    end
}
