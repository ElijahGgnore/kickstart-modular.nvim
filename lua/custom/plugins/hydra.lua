return {
  'nvimtools/hydra.nvim',
  config = function()
    local Hydra = require 'hydra'

    Hydra {
      name = 'Scroll',
      mode = 'n',
      body = '<leader>c',
      heads = {
        { 'h', 'zh' },
        { 'j', '<C-e>' },
        { 'k', '<C-y>' },
        { 'l', 'zl' },

        -- broken when used with snacks-scroll
        { 'H', '5zh' },
        { 'J', '5<C-e>' },
        { 'K', '5<C-y>' },
        { 'L', '5zl' },

        { '<Esc>', nil, { exit = true } },
        { 'q', nil, { exit = true } },
      },
    }
    Hydra {
      name = 'Resize window',
      mode = 'n',
      body = '<leader>r',
      heads = {
        { 'h', '<C-w>>' },
        { 'l', '<C-w><' },
        { 'k', '<C-w>+' },
        { 'j', '<C-w>-' },

        { '<Esc>', nil, { exit = true } },
        { 'q', nil, { exit = true } },
      },
    }
  end,
}
