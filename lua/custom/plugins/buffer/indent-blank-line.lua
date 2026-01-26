---@module 'lazy'
---@type LazySpec
-- Add indentation guides even on blank lines
-- See `:help ibl`
return {
  'lukas-reineke/indent-blankline.nvim',
  lazy = true,
  event = { 'BufReadPost', 'BufNewFile' },
  main = 'ibl',
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      enabled = false,
    },
  },
}
