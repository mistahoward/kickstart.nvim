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
        -- CHANGE THIS: Stop it from taking over the main screen
        hijack_netrw_behavior = 'disabled',
      },
      window = {
        mappings = {
          ['<C-b>'] = 'close_window',
        },
      },
    }
  end,
}
