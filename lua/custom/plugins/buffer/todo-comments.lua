---@module 'lazy'
---@type LazySpec
return {
  'folke/todo-comments.nvim',

  lazy = true,
  event = { 'BufReadPost', 'VeryLazy' },

  dependencies = { 'nvim-lua/plenary.nvim' },

  ---@module 'todo-comments'
  ---@type TodoOptions
  ---@diagnostic disable-next-line: missing-fields
  opts = { signs = false },
}
