---@module 'lazy'
---@type LazySpec
return {
  -- Provides default language server configurations
  -- We are also enabling the servers and attaching lsp specific keybinds to the buffer right here
  require 'custom.plugins.tooling.nvim-lspconfig',

  -- Autoformat
  require 'custom.plugins.tooling.conform',

  -- Debugger
  require 'custom.plugins.tooling.nvim-dap',

  -- Linter
  require 'custom.plugins.tooling.lint',

  -- Live preview for Markdown, HTML (with CSS and JS), AsciiDoc and SVG in your browser with instant updates while typing
  require 'custom.plugins.tooling.live-preview',
}
