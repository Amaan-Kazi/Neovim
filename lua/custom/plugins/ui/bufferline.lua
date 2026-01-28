---@module 'lazy'
---@type LazySpec
return {
  'akinsho/bufferline.nvim',
  version = '*',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  lazy = false,

  keys = {
    {
      'H',
      '<cmd>BufferLineCyclePrev<cr>',
      desc = 'Previous Buffer',
    },
    {
      'L',
      '<cmd>BufferLineCycleNext<cr>',
      desc = 'Next Buffer',
    },
  },

  opts = {
    -- See :help bufferline-configuration for config options
    ---@module 'bufferline'
    ---@type bufferline.Options
    options = {
      themable = true,

      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          highlight = 'Directory',
          separator = true,
        },
      },

      hover = {
        enabled = true,
        delay = 100,
        reveal = { 'close' },
      },

      -- Open buffer in new vertical split on right click
      right_mouse_command = 'vertical sbuffer %d',
      middle_mouse_command = 'bdelete! %d',

      diagnostics = 'nvim_lsp',
      diagnostics_update_on_event = true,
      show_tab_indicators = true,

      --- count is an integer representing total count of errors
      --- level is a string "error" | "warning"
      --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
      --- this should return a string
      --- Don't get too fancy as this function will be executed a lot
      diagnostics_indicator = function(count, level, _, _) -- function(count, level, diagnostic_dict, context)
        local icon = level:match 'error' and ' ' or ' '
        return ' ' .. icon .. count
      end,
    },
  },
}
