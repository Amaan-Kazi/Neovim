return function()
  -- [[ Install `lazy.nvim` plugin manager ]]
  --    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
  local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
      error('Error cloning lazy.nvim:\n' .. out)
    end
  end

  ---@type vim.Option
  local rtp = vim.opt.rtp
  rtp:prepend(lazypath)

  -- [[ Configure and install plugins ]]
  --
  --  To check the current status of your plugins, run
  --    :Lazy
  --
  --  You can press `?` in this menu for help. Use `:q` to close the window
  --
  --  To update plugins you can run
  --    :Lazy update
  --
  -- NOTE: Here is where you install your plugins.
  require('lazy').setup({
    -- Detect tabstop and shift width automatically
    require 'custom.plugins.guess-indent',

    -- Git related signs on the left of line number (gutter) and utilities for managing changes
    require 'custom.plugins.gitsigns',

    -- Shows continuation of keymaps as you type them
    require 'custom.plugins.which-key',

    -- Fuzzy Finder for files, LSP, etc
    require 'custom.plugins.telescope',

    -- LSP: Language Server Protocol
    require 'custom.lsp',

    -- Autoformat
    require 'custom.plugins.conform',

    -- Autocompletion
    require 'custom.plugins.blink',

    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    require 'custom.themes.tokyonight',

    -- Highlight todo, notes, etc in comments
    require 'custom.plugins.todo-comments',

    -- Useful collection of small plugins like status line and better selection around text objects and surroundings
    require 'custom.plugins.mini',

    -- Fast and efficient parser for syntax highlighting that only analyzes parts of documents that have changed
    require 'custom.plugins.treesitter',

    --  Here are some example plugins that I've included in the Kickstart repository.
    --  Uncomment any of the lines below to enable them (you will need to restart nvim).
    --
    -- require 'kickstart.plugins.debug',
    -- require 'kickstart.plugins.indent_line',
    -- require 'kickstart.plugins.lint',
    require 'kickstart.plugins.autopairs',
    require 'kickstart.plugins.neo-tree',
    require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

    -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
    -- Or use telescope!
    -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
    -- you can continue same window with `<space>sr` which resumes last telescope search
  }, {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  })
end

-- vim: ts=2 sts=2 sw=2 et
