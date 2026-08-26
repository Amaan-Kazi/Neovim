---@module 'lazy'
---@type LazySpec
return {
  -- Package manager for debug adapters, formatters, linters and language servers
  require 'custom.packages.mason',

  -- Automatically install mason packages on startup
  require 'custom.packages.mason-tool-installer',
}
