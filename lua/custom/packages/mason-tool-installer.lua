local lsp_servers = require 'custom.packages.lsp'
local ensure_installed = vim.tbl_keys(lsp_servers or {})

vim.list_extend(ensure_installed, require 'custom.packages.dap')
vim.list_extend(ensure_installed, require 'custom.packages.formatter')
vim.list_extend(ensure_installed, require 'custom.packages.linter')

---@module 'lazy'
---@type LazySpec
return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',

  -- Lazy loading this plugin is not supported
  -- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim/issues/39
  lazy = false,

  dependencies = {
    'mason-org/mason.nvim',
  },

  ---@module "mason-tool-installer"
  ---@type MasonToolInstallerSettings
  opts = {
    run_on_start = true,
    ensure_installed = ensure_installed,
  },
}

-- To check the current status of installed tools and/or manually install
-- other tools, you can run
--    :Mason
--
-- You can press `g?` for help in this menu.
