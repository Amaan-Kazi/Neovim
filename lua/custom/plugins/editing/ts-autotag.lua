---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-ts-autotag',
  opts = {
    -- https://github.com/windwp/nvim-ts-autotag/issues/229
    -- This plugin requires a opts table passed in config

    opts = {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = true, -- Auto close on trailing </
    },

    -- Also override individual filetype configs, these take priority.
    -- Empty by default, useful if one of the "opts" global settings
    -- doesn't work well in a specific filetype
    -- per_filetype = {
    --   ["html"] = {
    --     enable_close = false
    --   }
    -- }
  },
}
