---@module 'lazy'
---@type LazySpec
return {
  -- Completion Options
  require 'custom.plugins.completion.blink',

  -- Snippet Engine
  require 'custom.plugins.completion.luasnip',

  -- Premade snippets
  require 'custom.plugins.completion.friendly-snippets',

  -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  -- used for completion, annotations and signatures of Neovim apis
  require 'custom.plugins.completion.lazydev',
}
