local leet_arg = 'leetcode.nvim'

---@module 'lazy'
---@type LazySpec
return {
  'kawre/leetcode.nvim',

  lazy = leet_arg ~= vim.fn.argv(0, -1),
  cmd = 'Leet',

  build = ':TSUpdate html', -- if you have `nvim-treesitter` installed

  dependencies = {
    -- include a picker of your choice, see picker section for more details
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',

    -- for TSUpdate
    'nvim-treesitter/nvim-treesitter',
  },

  opts = {
    arg = leet_arg,
  },
}
