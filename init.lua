local original_notify = vim.notify

vim.notify = function(msg, log_level, opts)
  if type(msg) == "string" and msg:match("which%-key") then
    -- ignore Which-key warnings
    return
  end
  original_notify(msg, log_level, opts)
end

require("core.options")
require("core.plugins")
require("core.treesitter")
require("core.lsp")
require("core.completion")
require("core.telescope")
require("core.theme")
require("core.statusline")
require("core.autosession")
require("core.keymaps")
