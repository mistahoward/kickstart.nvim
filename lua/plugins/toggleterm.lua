return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]], -- The key to toggle the terminal window
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      start_in_insert = true, -- Try to be in typing mode when opening
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
    }

    -- THE MAGIC SAUCE: Better navigation keys
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      -- Press Esc to go to Normal Mode (so you can scroll up)
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      -- Press jk to go to Normal Mode (alternate)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      -- Use Ctrl+h/j/k/l to jump OUT of the terminal to other windows
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    end

    -- Apply these mappings only to toggleterm
    vim.cmd 'autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()'
  end,
}
