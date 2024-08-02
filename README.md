# Jamison's Neovim Config

> If setting up a new Neovim config on NixOS, clone this repo to `~/.config/nvim`, removing
anything that's been created there already by Home Manager, then rebuild the NixOS config.

### Plugin List
- [Lazy](https://github.com/folke/lazy.nvim) Package Manager
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) Neovim Status Bar
- [Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim) Filesystem Viewer
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) Fuzzy Finder Utility
- [TokyoNight](https://github.com/folke/tokyonight.nvim) Color Scheme
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) AST Parser and Highlighter

### Dependency Plugins
These plugins are installed not for their own sake, but as dependencies of the above
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Library of utility functions
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Supports Nerd Font icons
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim) - UI Component library
- [image.nvim](https://github.com/3rd/image.nvim) - Supports displaying image previews in Neovim

---

### Lazy Package Manager
Lazy loads plugins for neovim

- Not technically a plugin, so configured in `init.lua`
- The Lazyvim GUI can be accessed via the `:Lazy` command, and pops up automatically at start up if
there are plugins to install

### Lualine
Adds a status line to the bottom of the editor

### Neotree
Allows for viewing the filesystem in Neovim

- Can be run using the `:Neotree filesystem reveal <side>` command, where the <side> is either
`top`, `bottom`, `left`, or `right`
- The command to open on the left side is bound to `<leader>e`

### Telescope
Provides lots of fuzzy finding and search features

- Currently only two features are exposed as keybinds:
> - `<leader>ff`: "Find Files"
> - `<leader>fg`: "Find with Grep"

### Tokyo Night
Colorscheme

- Commented as an example for configuring plugins in separate files

### Treesitter
Builds an AST used for syntax highlighting and formatting, as well as by other plugins

- See config for a list of parsers it has installed by default
- Use `:TSInstall <lang>` to install a language parser at run-time 
