return {
  'akinsho/toggleterm.nvim',
  version = '*',
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
