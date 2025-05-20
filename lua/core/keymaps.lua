local wk = require("which-key")

wk.register({
  ["<leader>c"] = {
    name = "+config", -- this creates a new window when you hit <leader>c
    f = { "<cmd>Telescope find_files cwd=~/.config/nvim<CR>", "Find Config File" },
    r = { "<cmd>source $MYVIMRC<CR>", "Reload Config" },
  },
})
