local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local config_path = vim.fn.stdpath("config")

dashboard.section.header.val = {
" /$$$$$$$$                     /$$   /$$            /$$              ",
"|_____ $$                     | $$$ | $$           |__/              ",
"     /$$/   /$$$$$$   /$$$$$$ | $$$$| $$ /$$    /$$ /$$ /$$$$$$/$$$$ ",
"    /$$/   |____  $$ /$$__  $$| $$ $$ $$|  $$  /$$/| $$| $$_  $$_  $$",
"   /$$/     /$$$$$$$| $$$$$$$$| $$  $$$$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
"  /$$/     /$$__  $$| $$_____/| $$\\  $$$  \\  $$$/  | $$| $$ | $$ | $$",
" /$$$$$$$$|  $$$$$$$|  $$$$$$$| $$ \\  $$   \\  $/   | $$| $$ | $$ | $$",
"|________/ \\_______/ \\_______/|__/  \\__/    \\_/    |__/|__/ |__/ |__/"
}

local config_path = vim.fn.stdpath("config")

dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("f", "󰱼  File Browser", ":Telescope file_browser<CR>"),
  dashboard.button("g", "󱁵  Find Word", ":Telescope live_grep<CR>"),
  dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", "󰙰  Restore Session", ":source " .. config_path .. "/Session.vim<CR>"),
  dashboard.button("c", "  Config", ":lua require('telescope').extensions.file_browser.file_browser({ path = '" .. config_path .. "', select_buffer = true, respect_gitignore = false })<CR>"),
  dashboard.button("L", "󰒲  Lazy", ":Lazy<CR>"),
  dashboard.button("u", "  Update", ":Lazy update<CR>"),
  dashboard.button("m", "󰏔  Mason", ":Mason<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = { "This might work." }

alpha.setup(dashboard.config)
