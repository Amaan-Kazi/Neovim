---@module 'lazy'
---@type LazySpec
return {
  'folke/todo-comments.nvim',
  lazy = true,
  event = { 'BufReadPost', 'VeryLazy' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}
