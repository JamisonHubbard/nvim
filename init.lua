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

-- call the setup function for lazy.nvim
-- by passing in "plugins", we are telling lazy.nvim to look to the special "lua/" directory for
-- plugin definitions. These definitions can be in "lua/plugins.lua", or can be located in any lua
-- file found under the "lua/plugins/" folder
-- see the "lua/plugins/tokyonight.lua" file as a commented example of setting up a plugin this way
require("lazy").setup("plugins")
