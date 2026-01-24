---@module 'lazy'
---@type LazySpec
return {
  -- Useful collection of small plugins like status line and better selection around text objects and surroundings
  require 'custom.plugins.editing.mini',

  -- Automatically place closing pairs for ' " ( [ {
  require 'custom.plugins.editing.autopairs',

  -- Use treesitter to autoclose and autorename HTML tags, also works with a few other languages and frameworks
  require 'custom.plugins.editing.ts-autotag',
}
