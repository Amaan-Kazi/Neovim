---@module 'custom.types.language-server'
---@type language_server_config
return {
  name = 'lua_ls',
  mason_name = 'lua-language-server',

  config = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },

        diagnostics = {
          -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
          disable = { 'missing-fields' },
        },
      },
    },
  },
}
