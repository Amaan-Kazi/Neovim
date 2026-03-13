return function()
  -- Diagnostic Config
  -- See :help vim.diagnostic.Opts
  vim.diagnostic.config {
    update_in_insert = false,
    severity_sort = true,

    float = { border = 'rounded', source = 'if_many' },
    underline = {
      severity = {
        vim.diagnostic.severity.ERROR,
        vim.diagnostic.severity.WARN,
        vim.diagnostic.severity.INFO,
        vim.diagnostic.severity.HINT,
      },
    },

    signs = vim.g.have_nerd_font and {
      text = {
        [vim.diagnostic.severity.ERROR] = '󰅚 ',
        [vim.diagnostic.severity.WARN] = '󰀪 ',
        [vim.diagnostic.severity.INFO] = '󰋽 ',
        [vim.diagnostic.severity.HINT] = '󰌶 ',
      },
    } or {},

    -- Text shows up at the end of the line
    virtual_text = false,
    -- virtual_text = {
    -- source = 'if_many',
    -- spacing = 2,

    -- format = function(diagnostic)
    -- local diagnostic_message = {
    -- [vim.diagnostic.severity.ERROR] = diagnostic.message,
    -- [vim.diagnostic.severity.WARN] = diagnostic.message,
    -- [vim.diagnostic.severity.INFO] = diagnostic.message,
    -- [vim.diagnostic.severity.HINT] = diagnostic.message,
    -- }
    -- return diagnostic_message[diagnostic.severity]
    -- end,
    -- },

    -- Text shows up underneath the line, with virtual lines
    virtual_lines = false,

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = { float = true },
  }

  -- Diagnostic keymaps
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
end
