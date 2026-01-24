---@module 'lazy'
---@type LazySpec
local theme_configs = {
  require 'custom.themes.vscode',
  require 'custom.themes.kanagawa',
  require 'custom.themes.nightfox',
  require 'custom.themes.tokyonight',
  require 'custom.themes.github',
  require 'custom.themes.onedark',
  require 'custom.themes.ayu',
  require 'custom.themes.arctic',
}

-- first theme will be set as default
local themes = {
  {
    name = 'VSCode',
    colorscheme = 'vscode',
  },
  {
    name = 'Kanagawa Dragon',
    colorscheme = 'kanagawa-dragon',
  },
  {
    name = 'Carbonfox',
    colorscheme = 'carbonfox',
  },
  {
    name = 'Tokyonight Night',
    colorscheme = 'tokyonight-night',
  },
  {
    name = 'Github Dark',
    colorscheme = 'github_dark_default',
  },
  {
    name = 'OneDark Darker',
    colorscheme = 'onedark',
  },
  {
    name = 'Ayu Dark',
    colorscheme = 'ayu-dark',
  },
  {
    name = 'Arctic',
    colorscheme = 'arctic',
  },
}

-- code in string that will run before and after every colorscheme changed with Themery
local globalBefore = nil
local globalAfter = nil

-- Could not find any config option to set a default theme when launching nvim and themery for the first time
-- workaround: if persistence file not found, create one with a default theme
--- @return boolean success whether default was detected or set succesfully
local function ensure_default()
  local directory = vim.fn.stdpath 'data' .. '/themery'
  local file_path = directory .. '/state.json'

  -- if file already exists, then all good
  local file, err = io.open(file_path, 'r')
  if file then
    file:close()
    return true
  end

  -- if file doesnt exist, try to create it
  vim.fn.mkdir(directory, 'p') -- ensure directory exists
  file, err = io.open(file_path, 'w')

  if not file then
    vim.notify('Error: Failed to write to theme persistence file [' .. file_path .. ']: ' .. err)
    return false
  end

  local default_theme = {
    version = 0,
    theme_id = 3,
    colorscheme = themes[1].colorscheme,

    beforeCode = themes[1].before and themes[1].before or '',
    afterCode = themes[1].after and themes[1].after or '',

    globalBeforeCode = globalBefore and globalBefore or '',
    globalAfterCode = globalAfter and globalAfter or '',
  }

  file:write(vim.json.encode(default_theme))
  file:close()

  return true
end

---@module 'lazy'
---@type LazySpec
-- theme loader and picker with persistence
local themery = {
  'zaldih/themery.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins so the colorscheme can be loaded immediately.
  config = function()
    if not ensure_default() then
      -- Themes wont be loaded until error is fixed, but neovim and other plugins will continue to function
      return
    end

    require('themery').setup {
      livePreview = true, -- Apply theme while picking
      themes = themes,
      globalBefore = globalBefore,
      globalAfter = globalAfter,
    }

    -- TODO: Setup file watcher to use themery api to change themes across all nvim sessions when the persistence files changes

    -- create :Theme alias for :Themery
    vim.api.nvim_create_user_command('Theme', 'Themery', {})
  end,
}

---@module 'lazy'
---@type LazySpec
return {
  theme_configs,
  themery,
}
