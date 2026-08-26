local ensure_installed = {}

local language_servers = require 'custom.packages.language-servers'
local debug_adapters = require 'custom.packages.debug-adapters'

for _, server in ipairs(language_servers) do
  if server.mason_name ~= nil then
    table.insert(ensure_installed, server.mason_name)
  end
end

for _, adapter in ipairs(debug_adapters) do
  if adapter.mason_name ~= nil then
    table.insert(ensure_installed, adapter.mason_name)
  end
end

vim.list_extend(ensure_installed, require 'custom.packages.formatters')
vim.list_extend(ensure_installed, require 'custom.packages.linters')

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

    integrations = {
      ['mason-lspconfig'] = false,
      ['mason-null-ls'] = false,
      ['mason-nvim-dap'] = false,
    },
  },
}

-- To check the current status of installed tools and/or manually install
-- other tools, you can run
--    :Mason
--
-- You can press `g?` for help in this menu.
