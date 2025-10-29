---@module "snacks"
return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = false },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = vim.fn.has 'gui_running' == 0 and true or false },
    statuscolumn = { enabled = false },
    words = { enabled = true },
    lazygit = { enabled = true },
    terminal = { enabled = false },
    dim = { enabled = true },
    -- styles = {
    --   notification = {
    --     -- wo = { wrap = true } -- Wrap notifications
    --   },
    -- },
  },
  -- avoid multiline tables by disabling auto formatting
  -- stylua: ignore
  keys = {
    -- Top Pickers & Explorer
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    -- { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    -- { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    -- { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "[n]otification History" },
    -- { "<leader>e", function() Snacks.explorer() end, desc = "File [e]xplorer" },
    -- find
    { "<leader>pfb", function() Snacks.picker.buffers() end, desc = "Find [b]uffers" },
    { "<leader>pfc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find [c]onfig File" },
    { "<leader>pff", function() Snacks.picker.files() end, desc = "Find [f]iles" },
    { "<leader>pfg", function() Snacks.picker.git_files() end, desc = "Find [g]it Files" },
    { "<leader>pfp", function() Snacks.picker.projects() end, desc = "Find [p]rojects" },
    { "<leader>pfr", function() Snacks.picker.recent() end, desc = "Find [r]ecent" },
    -- git
    -- { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git [b]ranches" },
    -- { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git [l]og" },
    -- { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git [L]og Line" },
    -- { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git [s]tatus" },
    -- { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git [S]tash" },
    -- { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git [d]iff (Hunks)" },
    -- { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log [f]ile" },
    -- Grep
    { "<leader>pgb", function() Snacks.picker.lines() end, desc = "Grep [b]uffer Lines" },
    { "<leader>pgB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open [B]uffers" },
    { "<leader>pgg", function() Snacks.picker.grep() end, desc = "[G]rep" },
    { "<leader>pgw", function() Snacks.picker.grep_word() end, desc = "Grep visual selection or [w]ord", mode = { "n", "x" } },
    -- search
    { '<leader>ps"', function() Snacks.picker.registers() end, desc = "Search Registers" },
    { '<leader>ps/', function() Snacks.picker.search_history() end, desc = "Search History" },
    { "<leader>psa", function() Snacks.picker.autocmds() end, desc = "Search [a]utocmds" },
    { "<leader>psc", function() Snacks.picker.command_history() end, desc = "Search [c]ommand History" },
    { "<leader>psC", function() Snacks.picker.commands() end, desc = "Search [C]ommands" },
    { "<leader>psd", function() Snacks.picker.diagnostics() end, desc = "Search [d]iagnostics" },
    { "<leader>psD", function() Snacks.picker.diagnostics_buffer() end, desc = "Search Buffer [D]iagnostics" },
    { "<leader>psh", function() Snacks.picker.help() end, desc = "Search [h]elp Pages" },
    { "<leader>psH", function() Snacks.picker.highlights() end, desc = "Search [H]ighlights" },
    { "<leader>psi", function() Snacks.picker.icons() end, desc = "Search [i]cons" },
    { "<leader>psj", function() Snacks.picker.jumps() end, desc = "Search [j]umps" },
    { "<leader>psk", function() Snacks.picker.keymaps() end, desc = "Search [k]eymaps" },
    { "<leader>psl", function() Snacks.picker.loclist() end, desc = "Search [l]ocation List" },
    { "<leader>psm", function() Snacks.picker.marks() end, desc = "Search [m]arks" },
    { "<leader>psM", function() Snacks.picker.man() end, desc = "Search [M]an Pages" },
    { "<leader>psp", function() Snacks.picker.lazy() end, desc = "Search [p]lugin Specs" },
    { "<leader>psq", function() Snacks.picker.qflist() end, desc = "Search [q]uickfix List" },
    { "<leader>psu", function() Snacks.picker.undo() end, desc = "Search [u]ndo History" },
    { "<leader>psS", function() Snacks.picker.colorschemes() end, desc = "Search Color[S]chemes" },
    -- LSP
    { "<leader>ld", function() Snacks.picker.lsp_definitions() end, desc = "[l]SP [d]efinitions" },
    { "<leader>lD", function() Snacks.picker.lsp_declarations() end, desc = "[l]SP [D]eclarations" },
    { "<leader>lr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "[l]SP [r]eferences" },
    { "<leader>lI", function() Snacks.picker.lsp_implementations() end, desc = "[l]SP [I]mplementations" },
    { "<leader>ly", function() Snacks.picker.lsp_type_definitions() end, desc = "[l]SP T[y]pe Definitions" },
    { "<leader>ls", function() Snacks.picker.lsp_symbols() end, desc = "[l]SP [s]ymbols" },
    { "<leader>lS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "[l]SP Workspace [S]ymbols" },
    -- Other
    { "<leader>pR", function() Snacks.picker.resume() end, desc = "[R]esume The Last Picker" },
    { "<leader>tz",  function() Snacks.zen() end, desc = "Toggle [z]en Mode" },
    { "<leader>tZ",  function() Snacks.zen.zoom() end, desc = "Toggle [Z]oom" },
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select [S]cratch Buffer" },
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "[n]otification History" },
    { "<leader>bD", function() Snacks.bufdelete() end, desc = "[D]elete Buffer" },
    { "<leader>fR", function() Snacks.rename.rename_file() end, desc = "[R]ename File" },
    -- { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git [B]rowse", mode = { "n", "v" } },
    { "<leader>gl", function() Snacks.lazygit() end, desc = "[g]it [l]azygit" },
    { "<leader>on", function() Snacks.notifier.hide() end, desc = "Dismiss All [n]otifications" },
    { "]]",         function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
    { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
    {
      "<leader>N",
      desc = "Neovim News",
      function()
        Snacks.win({
          file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
          width = 0.6,
          height = 0.6,
          wo = {
            spell = false,
            wrap = false,
            signcolumn = "yes",
            statuscolumn = " ",
            conceallevel = 3,
          },
        })
      end,
    }
  },
  init = function()
    vim.api.nvim_create_autocmd('User', {
      pattern = 'VeryLazy',
      callback = function()
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
        vim.print = _G.dd -- Override print to use snacks for `:=` command

        -- Create some toggle mappings
        Snacks.toggle.option('spell', { name = 'Spelling' }):map '<leader>ts'
        Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>tw'
        Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>tL'
        Snacks.toggle.diagnostics():map '<leader>td'
        Snacks.toggle.line_number():map '<leader>tl'
        Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map '<leader>tc'
        Snacks.toggle.treesitter():map '<leader>tT'
        Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>tb'
        Snacks.toggle.inlay_hints():map '<leader>th'
        Snacks.toggle.indent():map '<leader>tg'
        Snacks.toggle.dim():map '<leader>tD'
      end,
    })
  end,
}
