-- tab space config
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- lazy package manager
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

-- create empty variables needed to start lazy.nvim
local plugins = {}
local opts = {}

-- call the setup function for lazy.nvim
require("lazy").setup(plugins, opts)
