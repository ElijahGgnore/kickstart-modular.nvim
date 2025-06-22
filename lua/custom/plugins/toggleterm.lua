return {
  'akinsho/toggleterm.nvim',
  version = '*',
    local taskwarrior = Terminal:new {
      cmd = 'taskwarrior-tui',
      display_name = 'Taskwarrior',
      direction = 'float',
      id = 3,
    }

    function _Taskwarrior_toggle()
      taskwarrior:toggle()
    end
    vim.api.nvim_set_keymap('n', '<leader>W', '<cmd>lua _Taskwarrior_toggle()<CR>', { noremap = true, silent = true, desc = 'Task[W]arrior-tui' })
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
