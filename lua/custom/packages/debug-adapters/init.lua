---@module 'custom.types.debug-adapter'
---@type debug_adapter_config[]
return {
  require 'custom.packages.debug-adapters.firefox',

  require 'custom.packages.debug-adapters.debugpy',
}
