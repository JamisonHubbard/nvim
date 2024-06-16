return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    -- install plenary.nvim as well, which is sort of a utility library that telescope depends on
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        -- set keybinds for the telescope plugin
        -- here we are accessing the lua module within telescope called "builtin" and
        -- pointing vim at some of its exported functions when we do certain key commands
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- "find files"
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- "find with grep"
    end
}
