---@module 'lazy'
---@type LazySpec
return {
  -- Package manager
  require 'custom.packages.mason',

  -- Ensure the dap, formatter, linter and lsp packages are installed
  require 'custom.packages.mason-tool-installer',

  -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  -- used for completion, annotations and signatures of Neovim apis
  require 'custom.packages.lazydev',

  -- Configure LSP servers and automatically enable them
  require 'custom.packages.mason-lspconfig',
}
