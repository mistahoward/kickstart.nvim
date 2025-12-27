return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require 'telescope.builtin'

    -- 1. Search File CONTENT (Ctrl+Shift+f)
    vim.keymap.set('n', '<C-S-f>', builtin.live_grep, { desc = 'Search in Files' })

    -- 2. Search File NAMES (Ctrl+p)
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find File' })
  end,
}
