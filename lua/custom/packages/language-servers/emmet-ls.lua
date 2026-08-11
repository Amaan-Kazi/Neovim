---@module 'custom.types.language-server'
---@type language_server_config
return {
  name = 'emmet_ls',
  mason_name = 'emmet-ls',

  config = {
    filetypes = {
      'html',

      'css',
      'sass',
      'scss',

      'javascript',

      'javascriptreact',
      'typescriptreact',

      'svelte',
      'vue',
    },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ['bem.enabled'] = true,
        },
      },
    },
  },
}
