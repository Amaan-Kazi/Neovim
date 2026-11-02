---@module 'lazy'
---@type LazySpec
return {
  -- friendly-snippets contains a variety of premade snippets.
  -- See the README about individual language/framework/plugin snippets:
  -- https://github.com/rafamadriz/friendly-snippets

  'rafamadriz/friendly-snippets',

  lazy = true,

  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()
  end,
}
