---@module 'lazy'
---@type LazySpec
return {
  -- Visual UI plugins
  require 'custom.plugins.ui',

  -- Navigation plugins
  require 'custom.plugins.navigation',

  -- Buffer enhancements
  require 'custom.plugins.buffer',

  -- Utilities while typing
  require 'custom.plugins.editing',

  -- Completion while typing
  require 'custom.plugins.completion',

  -- Interaction and Feedback
  require 'custom.plugins.interaction',

  -- IDE like tools, eg. Autoformatter, Linter, Debugger, Live Server
  require 'custom.plugins.tooling',

  -- External tool integration with neovim
  require 'custom.plugins.integration',
}
