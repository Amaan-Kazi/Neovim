---@module 'dap'
---@module 'custom.types.debug-adapter'
---@type debug_adapter_config
return {
  name = 'debugpy',
  mason_name = 'debugpy',

  -- https://codeberg.org/mfussenegger/nvim-dap-python
  adapters = {
    python = function(callback, config)
      ---@diagnostic disable-next-line: undefined-field
      local port = (config.connect or config).port

      ---@diagnostic disable-next-line: undefined-field
      local host = (config.connect or config).host or '127.0.0.1'

      if config.request == 'attach' then
        if port == nil then
          port = vim.fn.input('[Enter Port] ' .. host .. ':', '')
          if port == '' then
            return
          end
        end

        callback {
          type = 'server',
          host = host,
          port = port,
        }
      else
        callback {
          type = 'executable',
          command = vim.fn.exepath 'debugpy-adapter',
        }
      end
    end,
  },

  configurations = {
    -- https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
    python = {
      {
        name = 'Python: Attach to debugpy',
        request = 'attach',
        type = 'python',

        variablePresentation = {
          all = 'inline',
          protected = 'inline',

          class = 'group',

          special = 'hide',
          ['function'] = 'hide',
        },
      },

      {
        name = 'Python: Launch current file',
        request = 'launch',
        type = 'python',

        program = '${file}',

        -- debugpy supports launching an application with a different interpreter than the one used to launch debugpy itself
        python = function()
          local cwd = vim.fn.getcwd()

          if vim.env.VIRTUAL_ENV then
            return { vim.env.VIRTUAL_ENV .. '/bin/python' }
          elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
            return { cwd .. '/.venv/bin/python' }
          elseif vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
            return { cwd .. '/venv/bin/python' }
          else
            return { '/usr/bin/python' }
          end
        end,

        variablePresentation = {
          all = 'inline',
          protected = 'inline',

          class = 'group',

          special = 'hide',
          ['function'] = 'hide',
        },
      },
    },
  },
}
