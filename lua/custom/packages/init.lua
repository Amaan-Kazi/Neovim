---@module 'lazy'
---@type LazySpec
return {
  -- Package manager
  require 'custom.packages.mason',

  -- Ensure the dap, formatter, linter and lsp packages are installed
  require 'custom.packages.mason-tool-installer',

  -- Configure LSP servers and automatically enable them
  require 'custom.packages.mason-lspconfig',
}
