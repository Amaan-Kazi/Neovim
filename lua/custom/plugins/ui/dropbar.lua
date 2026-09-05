---@module 'lazy'
---@type LazySpec
return {
  'Bekaboo/dropbar.nvim',

  -- Lazy-loading is unneeded as it is already done in plugin/dropbar.lua

  dependencies = {
    -- optional, but required for fuzzy finder support
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },

  config = function()
    local dropbar_api = require 'dropbar.api'

    vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
    vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
    vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    -- press i while selecting to enter fzf mode

    require('dropbar').setup {
      bar = {
        -- default config + skip terminal
        -- https://github.com/Bekaboo/dropbar.nvim#bar
        enable = function(buf, win, _)
          buf = vim._resolve_bufnr(buf)
          if not vim.api.nvim_buf_is_valid(buf) or not vim.api.nvim_win_is_valid(win) then
            return false
          end

          if
            not vim.api.nvim_buf_is_valid(buf)
            or not vim.api.nvim_win_is_valid(win)
            or vim.fn.win_gettype(win) ~= ''
            or vim.wo[win].winbar ~= ''
            or vim.bo[buf].ft == 'help'
          then
            return false
          end

          local stat = vim.uv.fs_stat(vim.api.nvim_buf_get_name(buf))
          if stat and stat.size > 1024 * 1024 then
            return false
          end

          -- if buffer has no filetype then skip, for example terminal
          if vim.bo[buf].ft == nil then
            return false
          end

          return vim.bo[buf].ft == 'markdown'
            or pcall(vim.treesitter.get_parser, buf)
            or not vim.tbl_isempty(vim.lsp.get_clients {
              bufnr = buf,
              method = 'textDocument/documentSymbol',
            })
        end,
      },
    }
  end,
}
