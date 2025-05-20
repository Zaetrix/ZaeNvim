require("which-key").setup({
  plugins = {
    spelling = { enabled = true, suggestions = 20 },
  },
  window = {
    border = "rounded",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    spacing = 8,
  },
})

local config_path = vim.fn.stdpath("config")
local wk = require("which-key")

wk.register({
  ["<leader>t"] = {
    name = "+terminal",
    f = { "<cmd>ToggleTerm direction=float<CR>", "Float Terminal" },
    h = { "<cmd>ToggleTerm direction=horizontal<CR>", "Horizontal Terminal" },
    v = { "<cmd>ToggleTerm direction=vertical<CR>", "Vertical Terminal" },
    t = { "<cmd>ToggleTerm direction=tab<CR>", "Tab Terminal" },
  },
  ["<leader>e"] = {
    name = "+edit",
    w = { "<cmd>w<CR>", "Save" },
    d = { '"_d', "Delete (No Yank)" },
    D = { '"_D', "Delete Line (No Yank)" },
    p = { '"0p', "Paste Last Yank" },
    y = { '"+y', "Yank to Clipboard" },
    u = { "<cmd>undo<CR>", "Undo" },
    r = { "<cmd>redo<CR>", "Redo" }, -- Redo
  },

  ["<leader>n"] = {
    name = "+tabs",
    c = { "<cmd>tabclose<CR>", "Close Tab" },
    n = { "<cmd>tabnew<CR>", "New Tab" },
    l = { "<cmd>tabnext<CR>", "Next Tab" },
    h = { "<cmd>tabprevious<CR>", "Previous Tab" },
    g = {
      function()
        local tab = vim.fn.input("Go to tab #: ")
        if tonumber(tab) then
          vim.cmd("tabnext " .. tab)
        end
      end,
      "Go to Tab #"
    }
  },
  ["<leader>A"] = { "<cmd>Alpha<CR>", "Dashboard" },
  ["<leader>c"] = {
    name = "+config",
    f = { "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })<CR>", "Find Config File" },
    b = { "<cmd>lua require('telescope').extensions.file_browser.file_browser({ cwd = vim.fn.stdpath('config') })<CR>", "Browse Config Folder" },
    r = { "<cmd>source $MYVIMRC<CR>", "Reload Config" },
    s = { "<cmd>source " .. vim.fn.stdpath("config") .. "/Session.vim<CR>", "Source Session" },
    e = { "<cmd>e $MYVIMRC<CR>", "Edit init.lua" },
  }
})

require("which-key").register({
  ["<leader>s"] = {
    name = "+session",
    s = {
      function()
        vim.cmd("mks! " .. config_path .. "/Session.vim")
        print("Session saved to Session.vim")
      end,
      "Save Session",
    },
    a = {
      function()
        local name = vim.fn.input("Session name: ")
        if name ~= "" then
          vim.cmd("mks! " .. config_path .. "/" .. name .. ".vim")
          print("Session saved to " .. name .. ".vim")
        end
      end,
      "Save Session As...",
    },
    r = {
      function()
        local session = config_path .. "/Session.vim"
        if vim.fn.filereadable(session) == 1 then
          vim.cmd("source " .. vim.fn.fnameescape(session))
          print("Session restored.")
        else
          print("No session file found.")
        end
      end,
      "Restore Session",
    },
    d = {
      function()
        local session = config_path .. "/Session.vim"
        if vim.fn.delete(session) == 0 then
          print("Session deleted.")
        else
          print("No session file to delete.")
        end
      end,
      "Delete Session",
    },

    l = {
      function()
        local name = vim.fn.input("Load session name: ")
        local session_file = config_path .. "/" .. name .. ".vim"
        if vim.fn.filereadable(session_file) == 1 then
          vim.cmd("source " .. vim.fn.fnameescape(session_file))
          print("Session '" .. name .. "' loaded.")
        else
          print("Session '" .. name .. "' not found.")
        end
      end,
      "Load Session By Name",
    },
  },
})
