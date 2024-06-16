return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    -- install these plugins as dependencies of neotree
    dependencies = {
        "nvim-lua/plenary.nvim", -- utility functions for neovim
        "nvim-tree/nvim-web-devicons", -- supports nerd font icons
        "MunifTanjim/nui.nvim", -- ui component library for neovim
        "3rd/image.nvim", -- supports image previews in neovim
    },

    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", {})
    end
}
