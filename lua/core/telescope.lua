require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/" },
  },
  extensions = {
    file_browser = {
      -- optional settings:
      theme = "dropdown",
      hijack_netrw = true,
    },
  },
})

require("telescope").load_extension("file_browser")
