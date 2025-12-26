return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  keys = {
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Restore Session',
    },
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Restore Last Session',
    },
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = "Don't Save Current Session",
    },
  },
  -- This function runs when Neovim starts, before plugins are even loaded
  init = function()
    vim.api.nvim_create_autocmd('VimEnter', {
      group = vim.api.nvim_create_augroup('restore_session', { clear = true }),
      nested = true,
      callback = function()
        -- Only load the session if nvim was started with no args
        if vim.fn.argc() == 0 then
          require('persistence').load()
        end
      end,
    })
  end,
}
