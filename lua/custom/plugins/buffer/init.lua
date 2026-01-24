---@module 'lazy'
---@type LazySpec
return {
  -- Git related signs on the left of line number (gutter) and utilities for managing changes
  require 'custom.plugins.buffer.gitsigns',

  -- Fast and efficient parser for syntax highlighting that only analyzes parts of documents that have changed
  require 'custom.plugins.buffer.treesitter',

  -- Add indentation guide, even on blank lines
  require 'custom.plugins.buffer.indent-blank-line',

  -- Detect tabstop and shift width automatically or by using :GuessIndent
  require 'custom.plugins.buffer.guess-indent',

  -- Highlight todo, notes, etc in comments
  require 'custom.plugins.buffer.todo-comments',
}
