return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      -- Optional: You can configure the layout here,
      -- but standard defaults match VS Code's "Side by Side" well.
    }
  end,
}
