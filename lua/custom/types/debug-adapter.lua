---@meta

---@module 'dap'
---@class (exact)        debug_adapter_config
---@field name           string                             Debug adapter name
---@field mason_name     string?                            Mason package name
---@field adapters       table<string, dap.Adapter[]|fun(callback: fun(adapter: dap.Adapter), config: dap.Configuration, parent?: dap.Session)> How neovim should connect to a debug adapter. The key of this table is used in configuration.type
---@field configurations table<string, dap.Configuration[]> What the debug adapter should do with the debugger and the program being debugged. The key of this table is the neovim filetype
