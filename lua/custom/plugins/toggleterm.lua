return {
  'akinsho/toggleterm.nvim',
  version = '*',
  init = function()
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      display_name = 'Lazygit',
      dir = 'git_dir',
      direction = 'float',
      id = 2,
    }
    local taskwarrior = Terminal:new {
      cmd = 'taskwarrior-tui',
      display_name = 'Taskwarrior',
      direction = 'float',
      id = 3,
    }

    function _Lazygit_toggle()
      lazygit:toggle()
    end

    function _Taskwarrior_toggle()
      taskwarrior:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _Lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Lazy[g]it' })
    vim.api.nvim_set_keymap('n', '<leader>W', '<cmd>lua _Taskwarrior_toggle()<CR>', { noremap = true, silent = true, desc = 'Task[W]arrior-tui' })
  end,
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = {
      title_pos = 'center',
      border = 'rounded',
      winblend = 12,
      width = function()
        return math.floor(vim.o.columns * 0.95)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.92)
      end,
    },
  },
}
