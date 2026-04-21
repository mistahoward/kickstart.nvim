return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- Set this to false to always pull the latest features
  opts = {
    -- Change this to your preferred provider: "claude", "openai", "gemini", or "copilot"
    provider = 'claude',
    auto_suggestions_provider = 'claude',
  },
  -- This is where the magic build step happens
  build = 'make',
  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The following are optional but highly recommended for the UI
    'nvim-tree/nvim-web-devicons', -- Requires a Nerd Font!
    {
      -- Make the AI output look beautiful
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
