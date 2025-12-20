return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.vimtex_mappings_prefix = '<localleader>v'
    vim.g.vimtex_mappings_disable = { ['n'] = { 'K' } }
    -- vim.api.nvim_create_autocmd('FileType', {
    --   pattern = 'tex',
    --   callback = function()
    --     vim.keymap.set('n', '<localleader>vd', '<Plug>(vimtex-doc)', { buffer = true, silent = true })
    --   end,
    -- })

    vim.g.vimtex_view_general_viewer = 'okular'
    vim.g.vimtex_view_general_options = '--unique @pdf\\#src:@line@tex'
  end,
}
