-- autosession.lua or in init.lua
local session_path = vim.fn.stdpath("config") .. "/Session.vim"

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    -- Only save session if in a normal file-editing context
    local buftype = vim.bo.buftype
    if buftype == "" then
      vim.cmd("mks! " .. vim.fn.fnameescape(session_path))
    end
  end,
})
