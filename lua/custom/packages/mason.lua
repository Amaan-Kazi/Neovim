---@module 'lazy'
---@type LazySpec
return {
  'mason-org/mason.nvim',
  lazy = false,

  ---@module 'mason.settings'
  ---@type MasonSettings
  ---@diagnostic disable-next-line: missing-fields
  opts = {},
}

-- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
