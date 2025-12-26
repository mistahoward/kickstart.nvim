return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<C-b>', '<cmd>Neotree toggle<cr>', desc = 'Toggle Neo-tree' },
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = 'disabled',
        -- THIS IS THE NEW SECTION
        filtered_items = {
          visible = true, -- This says "show me everything by default"
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      window = {
        mappings = {
          ['<C-b>'] = 'close_window',
        },
      },
    }
  end,
}
