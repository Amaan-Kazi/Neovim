---@meta

---@class (exact)    language_server_config
---@field name       string         Language server name
---@field mason_name string?        Mason package name
---@field disabled   boolean?       Disable automatic installation and setup of this language server. Default: false
---@field config     vim.lsp.Config Config for the language server
