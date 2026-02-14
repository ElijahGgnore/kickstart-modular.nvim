return {
  'uga-rosa/ccc.nvim',
  config = function()
    vim.opt.termguicolors = true

    local ccc = require 'ccc'
    local mapping = ccc.mapping

    ccc.setup {
      -- Your preferred settings
      -- Example: enable highlighter
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    }

    vim.keymap.set('n', '<localleader>pc', ':CccPick<CR>', { desc = '[c]olor picker' })
  end,
}
