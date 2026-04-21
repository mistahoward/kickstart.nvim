local M = {}

function M.ignite_engines()
  local terminal_data = vim.fn.json_decode(vim.fn.readfile 'sessions.json')
  local sessions = terminal_data.sessions.default
  local Terminal = require('toggleterm.terminal').Terminal

  -- We loop through your groups of terminals
  for group_index, group in ipairs(sessions) do
    for _, term_info in ipairs(group) do
      local new_term = Terminal:new {
        cmd = term_info.autoExecuteCommands and term_info.commands[1] or nil,
        display_name = term_info.name,
        direction = 'horizontal', -- Matches your toggleterm config
        on_open = function(term)
          -- If it wasn't auto-executed, we can still manually send the command
          if not term_info.autoExecuteCommands then
            term:send(term_info.commands[1], false)
          end
        end,
      }
      new_term:spawn()
    end
  end
end

return M
