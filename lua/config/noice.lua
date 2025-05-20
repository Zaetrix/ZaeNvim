require("noice").setup({
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
    format = {
      cmdline = { icon = " :" },
      search_down = { icon = " " },
      search_up = { icon = " " },
      filter = { icon = " " },
      lua = { icon = " " },
      help = { icon = " " },
    },
  },
  messages = {
    enabled = true,
    view = "notify",
    view_error = "notify",
    view_warn = "notify",
    view_history = "messages",
  },
  popupmenu = {
    enabled = true,
    backend = "nui",
  },
  notify = {
    enabled = true,
    view = "notify",
  },
  views = {
    cmdline_popup = {
      position = {
        row = "40%",
        col = "50%",
      },
      size = {
        width = 60,
        height = "auto",
      },
      border = {
        style = "rounded",
      },
      win_options = {
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
      },
    },
  },
})

vim.cmd([[ set cmdheight=0 ]])
