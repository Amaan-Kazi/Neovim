---@module 'custom.types.language-server'
---@type language_server_config
return {
  name = 'asm_lsp',
  mason_name = 'asm-lsp',

  config = {
    filetypes = { 'asm', 's', 'S' },
  },
}
