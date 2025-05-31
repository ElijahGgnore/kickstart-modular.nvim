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
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = false },
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
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "[n]otification History" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File [e]xplorer" },
    -- find
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "[b]uffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find [c]onfig File" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find [f]iles" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find [g]it Files" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "[p]rojects" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "[r]ecent" },
    -- git
    -- { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git [b]ranches" },
    -- { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git [l]og" },
    -- { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git [L]og Line" },
    -- { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git [s]tatus" },
    -- { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git [S]tash" },
    -- { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git [d]iff (Hunks)" },
    -- { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log [f]ile" },
    -- Grep
    { "<leader>sb", function() Snacks.picker.lines() end, desc = "[b]uffer Lines" },
    { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open [B]uffers" },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = "[G]rep" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or [w]ord", mode = { "n", "x" } },
    -- search
    { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
    { '<leader>s/', function() Snacks.picker.search_history() end, desc = "Search History" },
    { "<leader>sa", function() Snacks.picker.autocmds() end, desc = "[a]utocmds" },
    { "<leader>sb", function() Snacks.picker.lines() end, desc = "[b]uffer Lines" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "[c]ommand History" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "[C]ommands" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "[d]iagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer [D]iagnostics" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "[h]elp Pages" },
    { "<leader>sH", function() Snacks.picker.highlights() end, desc = "[H]ighlights" },
    { "<leader>si", function() Snacks.picker.icons() end, desc = "[i]cons" },
    { "<leader>sj", function() Snacks.picker.jumps() end, desc = "[j]umps" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "[k]eymaps" },
    { "<leader>sl", function() Snacks.picker.loclist() end, desc = "[l]ocation List" },
    { "<leader>sm", function() Snacks.picker.marks() end, desc = "[m]arks" },
    { "<leader>sM", function() Snacks.picker.man() end, desc = "[M]an Pages" },
    { "<leader>sp", function() Snacks.picker.lazy() end, desc = "Search for [p]lugin Spec" },
    { "<leader>sq", function() Snacks.picker.qflist() end, desc = "[q]uickfix List" },
    { "<leader>sR", function() Snacks.picker.resume() end, desc = "[R]esume" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "[u]ndo History" },
    { "<leader>oC", function() Snacks.picker.colorschemes() end, desc = "[C]olorschemes" },
    -- LSP
    { "<leader>ld", function() Snacks.picker.lsp_definitions() end, desc = "[l]SP [d]efinitions" },
    { "<leader>lD", function() Snacks.picker.lsp_declarations() end, desc = "[l]SP [D]eclarations" },
    { "<leader>lr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "[l]SP [r]eferences" },
    { "<leader>lI", function() Snacks.picker.lsp_implementations() end, desc = "[l]SP [I]mplementations" },
    { "<leader>ly", function() Snacks.picker.lsp_type_definitions() end, desc = "[l]SP T[y]pe Definitions" },
    { "<leader>ls", function() Snacks.picker.lsp_symbols() end, desc = "[l]SP [s]ymbols" },
    { "<leader>lS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "[l]SP Workspace [S]ymbols" },
    -- Other
    { "<leader>tz",  function() Snacks.zen() end, desc = "Toggle [z]en Mode" },
    { "<leader>tZ",  function() Snacks.zen.zoom() end, desc = "Toggle [Z]oom" },
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select [S]cratch Buffer" },
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "[n]otification History" },
    { "<leader>bD", function() Snacks.bufdelete() end, desc = "[D]elete Buffer" },
    { "<leader>fR", function() Snacks.rename.rename_file() end, desc = "[R]ename File" },
    -- { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git [B]rowse", mode = { "n", "v" } },
    -- { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazy[g]it" },
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
