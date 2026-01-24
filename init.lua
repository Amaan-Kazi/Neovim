-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Disable NetRW since it loads immediately and shows briefly before neo-tree
-- when providing directory as an argument to neovim
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Set native neovim options like relative line numbers, leader key, clipboard, etc
require 'custom.options'()

-- Set native neovim keymaps like window switching
require 'custom.keymaps'()

-- Set functions which are called on certain neovim events to modify or improve them
require 'custom.autocommands'()

-- Load the Lazy plugin manager
require 'custom.lazy'()
