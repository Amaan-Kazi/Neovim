---@module 'lazy'
---@type LazySpec
return {
  'nvimdev/dashboard-nvim',

  lazy = true,
  event = { 'VimEnter' },

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  opts = {
    theme = 'doom',

    config = {
      -- https://texteditor.com/multiline-text-art/
      header = {
        '',
        '',
        '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
        '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
        '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
        '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
        '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
        '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
        '',
        '',
      },

      vertical_center = true,

      center = {
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Find File',
          desc_hl = 'String',

          key = 'f',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'lua require("telescope.builtin").find_files()',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'New File',
          desc_hl = 'String',

          key = 'n',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'enew | startinsert',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Find Text',
          desc_hl = 'String',

          key = 'g',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'lua require("telescope.builtin").live_grep()',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Recent Files',
          desc_hl = 'String',

          key = 'r',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'lua require("telescope.builtin").oldfiles()',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Config',
          desc_hl = 'String',

          key = 'c',
          key_hl = 'Number',
          -- key_format = '%s',

          action = ':cd ' .. vim.fn.stdpath 'config' .. ' | :e init.lua | Neotree',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Theme',
          desc_hl = 'String',

          key = 't',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'Themery',
        },
        {
          icon = '  ',
          icon_hl = 'Title',

          desc = 'Quit                                     ',
          desc_hl = 'String',

          key = 'q',
          key_hl = 'Number',
          -- key_format = '%s',

          action = 'qa',
        },
      },
    },
  },
}
