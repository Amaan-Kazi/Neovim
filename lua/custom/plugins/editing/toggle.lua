---@module 'lazy'
---@type LazySpec
return {
  'leblocks/toggle.nvim',

  lazy = true,
  event = { 'BufReadPost', 'BufNewFile', 'VeryLazy' },

  keys = {
    {
      '<leader>tt',
      function()
        require('toggle').toggle()
      end,
      desc = '[T]oggle word',
    },
    {
      '<leader>tT',
      function()
        require('toggle').toggle()
      end,
      desc = '[T]oggle word (reverse)',
    },
  },

  opts = {},
}
