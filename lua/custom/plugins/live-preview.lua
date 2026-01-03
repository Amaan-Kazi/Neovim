return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    -- Port to run the live preview server on.
    port = 5500,

    -- `browser`: Terminal command to open the browser for live-previewing (eg.
    -- 'firefox', 'flatpak run com.vivaldi.Vivaldi'). By default, it will use the
    -- system's default browser.
    browser = 'default',

    -- `dynamic_root`: If true, the root directory of the server will be the parent
    -- directory of the current file. Otherwise, it will be |current-directory|.
    dynamic_root = false,

    -- `sync_scroll`: If true, the plugin will sync the scrolling in the browser as
    -- you scroll in the Markdown files in Neovim.
    sync_scroll = true,

    -- `picker`: Picker to use for opening files. 5 choices are available: |telescope|,
    -- |fzf-lua|, |mini.pick|, |snacks.picker| or |vim.ui.select|. If nil, the plugin look for the first available picker
    -- when you call the `pick` command.
    picker = 'telescope',

    -- `address`: Hostname/IP-address to bind the server to. Default: `127.0.0.1`.
    address = '127.0.0.1',
  },
}
