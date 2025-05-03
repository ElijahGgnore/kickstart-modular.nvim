return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  config = function()
    local p = require 'persistence'
    p.setup { branch = false }

    vim.keymap.set('n', '<leader>ps', function()
      p.load()
    end, { desc = 'load the session for the current directory' })

    vim.keymap.set('n', '<leader>pS', function()
      p.select()
    end, { desc = 'select a session to load' })

    vim.keymap.set('n', '<leader>pl', function()
      p.load { last = true }
    end, { desc = 'load the last session' })

    vim.keymap.set('n', '<leader>pd', function()
      p.stop()
    end, { desc = "stop Persistence => session won't be saved on exit" })
  end,
}
