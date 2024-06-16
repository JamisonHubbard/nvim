# Jamison's Neovim Config

### Plugin List
- [Lazy](https://github.com/folke/lazy.nvim) Package Manager
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) Fuzzy Finder Utility
- [TokyoNight](https://github.com/folke/tokyonight.nvim) Color Scheme
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

---

### Lazy Package Manager
**Summary:** Lazy loads plugins for neovim

- Configured in `init.lua`
- The Lazyvim GUI can be accessed via the `:Lazy` command, and pops up automatically at start up if
there are plugins to install

### Telescope
**Summary:** Provides lots of fuzzy finding and search features

- Configured in `init.lua`
- Currently only two features are exposed as keybinds:
> - `<leader>ff`: "Find Files"
> - `<leader>fg`: "Find with Grep"

### Tokyo Night
**Summary:** Colorscheme

- Configured in `init.lua`

### Treesitter
**Summary:** Builds an AST used for syntax highlighting and formatting, as well as by other plugins

- Configured in `init.lua`
- See config for a list of parsers it has installed by default
- Use `:TSInstall <lang>` to install a language parser at run-time 
