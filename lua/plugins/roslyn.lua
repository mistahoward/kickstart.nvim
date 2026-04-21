return {
  'seblyng/roslyn.nvim',
  ft = { 'cs', 'razor' }, -- Only load for C# and Razor files
  config = function()
    require('roslyn').setup {
      -- This ensures it uses the same "smart" completion as your other LSPs
      capabilities = require('blink.cmp').get_lsp_capabilities(),
    }
  end,
}
