return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'davidmh/cspell.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'
    local cspell = require 'cspell'

    -- 3. Setup
    null_ls.setup {
      sources = {
        -- Diagnostics (Finding errors)
        cspell.diagnostics.with {
          -- This function lets you change how the errors look
          diagnostics_postprocess = function(diagnostic)
            -- Change severity to HINT so it's not a screaming red error
            diagnostic.severity = vim.diagnostic.severity.HINT
          end,
          -- This is how you point it to your specific config if it doesn't find it automatically:
          config = {
            -- cspell.nvim generally finds .vscode/settings.json automatically,
            -- but you can force other files here if needed.
          },
        },

        -- Code Actions (The "Fix it" menu)
        cspell.code_actions,
      },
    }
  end,
}
