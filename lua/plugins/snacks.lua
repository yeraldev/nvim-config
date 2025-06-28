return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    terminal = { enabled = true },
    win = { enabled = true },

    bigfile = { enabled = true },
    dashboard = { enable = true },
    indent = { enabled = true },
    input = { enabled = true },
    image = { enabled = true },
    picker = {
      enabled = true,
      win = {
        input = {
          keys = {
            ["<C-s>"] = { "edit_vsplit", mode = { "i", "n" }, desc = "Open in vertical split" },
            ["/"] = { "toggle_focus", desc = "Toggle focus between input and list" },
            ["<a-w>"] = { "cycle_win", mode = { "i", "n" }, desc = "Cycle between windows" },
          },
        },
        list = {
          keys = {
            ["<C-s>"] = { "edit_vsplit", desc = "Open in vertical split" },
          },
        },
      },
    },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    toggle = { enabled = true },
    words = { enabled = true },
  },
  config = function(_, opts)
    local snacks = require("snacks")
    snacks.setup(opts)

    -- Picker mappings (Telescope-like)
    vim.keymap.set("n", "<leader>ff", function()
      snacks.picker.files()
    end, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", function()
      snacks.picker.grep()
    end, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", function()
      snacks.picker.buffers()
    end, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>fh", function()
      snacks.picker.help()
    end, { desc = "Find Help" })
    vim.keymap.set("n", "<leader>fr", function()
      snacks.picker.recent()
    end, { desc = "Recent Files" })
    vim.keymap.set("n", "<leader>fc", function()
      snacks.picker.files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "Find Config Files" })
    vim.keymap.set("n", "<leader>fw", function()
      snacks.picker.grep_word()
    end, { desc = "Grep Word Under Cursor" })
    vim.keymap.set("n", "<leader>fs", function()
      snacks.picker.symbols()
    end, { desc = "Find Symbols" })
    vim.keymap.set("n", "<leader>fd", function()
      snacks.picker.diagnostics()
    end, { desc = "Find Diagnostics" })
    vim.keymap.set("n", "<leader>fk", function()
      snacks.picker.keymaps()
    end, { desc = "Find Keymaps" })
    vim.keymap.set("n", "<leader>fm", function()
      snacks.picker.marks()
    end, { desc = "Find Marks" })
    vim.keymap.set("n", "<leader>fj", function()
      snacks.picker.jumps()
    end, { desc = "Find Jumps" })
    vim.keymap.set("n", "<leader>fo", function()
      snacks.picker.oldfiles()
    end, { desc = "Find Old Files" })
    vim.keymap.set("n", "<leader>ft", function()
      snacks.picker.colorschemes()
    end, { desc = "Find Themes" })
    vim.keymap.set("n", "<leader>fR", function()
      snacks.picker.resume()
    end, { desc = "Resume Last Picker" })
    vim.keymap.set("v", "<leader>fg", function()
      snacks.picker.grep_selection()
    end, { desc = "Grep Selection" })

    -- Git picker mappings
    vim.keymap.set("n", "<leader>gc", function()
      snacks.picker.git_commits()
    end, { desc = "Git Commits" })
    vim.keymap.set("n", "<leader>gs", function()
      snacks.picker.git_status()
    end, { desc = "Git Status" })
    vim.keymap.set("n", "<leader>gS", function()
      snacks.picker.git_stash()
    end, { desc = "Git Stash" })

    -- LSP picker mappings
    vim.keymap.set("n", "<leader>lr", function()
      snacks.picker.lsp_references()
    end, { desc = "LSP References" })
    vim.keymap.set("n", "<leader>ld", function()
      snacks.picker.lsp_definitions()
    end, { desc = "LSP Definitions" })
    vim.keymap.set("n", "<leader>li", function()
      snacks.picker.lsp_implementations()
    end, { desc = "LSP Implementations" })
    vim.keymap.set("n", "<leader>lt", function()
      snacks.picker.lsp_type_definitions()
    end, { desc = "LSP Type Definitions" })
    vim.keymap.set("n", "<leader>ls", function()
      snacks.picker.lsp_document_symbols()
    end, { desc = "LSP Document Symbols" })
    vim.keymap.set("n", "<leader>lS", function()
      snacks.picker.lsp_workspace_symbols()
    end, { desc = "LSP Workspace Symbols" })

    -- Key mappings
    vim.keymap.set("n", "<leader>z", function()
      snacks.zen()
    end, { desc = "Toggle Zen Mode" })
    vim.keymap.set("n", "<leader>Z", function()
      snacks.zen.zoom()
    end, { desc = "Toggle Zoom" })
    vim.keymap.set("n", "<leader>.", function()
      snacks.scratch()
    end, { desc = "Toggle Scratch Buffer" })
    vim.keymap.set("n", "<leader>S", function()
      snacks.scratch.select()
    end, { desc = "Select Scratch Buffer" })
    vim.keymap.set("n", "<leader>n", function()
      snacks.notifier.show_history()
    end, { desc = "Notification History" })
    vim.keymap.set("n", "<leader>bd", function()
      snacks.bufdelete()
    end, { desc = "Delete Buffer" })
    vim.keymap.set("n", "<leader>cR", function()
      snacks.rename.rename_file()
    end, { desc = "Rename File" })
    vim.keymap.set("n", "<leader>gB", function()
      snacks.gitbrowse()
    end, { desc = "Git Browse" })
    vim.keymap.set("n", "<leader>gb", function()
      snacks.git.blame_line()
    end, { desc = "Git Blame Line" })
    vim.keymap.set("n", "<leader>gf", function()
      snacks.lazygit.log_file()
    end, { desc = "Lazygit Current File History" })
    vim.keymap.set("n", "<leader>gg", function()
      snacks.lazygit()
    end, { desc = "Lazygit" })
    vim.keymap.set("n", "<leader>gl", function()
      snacks.lazygit.log()
    end, { desc = "Lazygit Log (cwd)" })
    vim.keymap.set("n", "<leader>un", function()
      snacks.notifier.hide()
    end, { desc = "Dismiss All Notifications" })
    vim.keymap.set("n", "<C-\\>", function()
      snacks.terminal()
    end, { desc = "Toggle Terminal" })
    vim.keymap.set("n", "]]]", function()
      snacks.words.jump(vim.v.count1)
    end, { desc = "Next Reference" })
    vim.keymap.set("n", "[[[", function()
      snacks.words.jump(-vim.v.count1)
    end, { desc = "Prev Reference" })

    -- Terminal mappings
    vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })
  end,
}
