local function is_editing_buffer(bufnr)
  local bt = vim.bo[bufnr].buftype
  return bt == "" or bt == "acwrite" -- exclude terminal, help, etc.
end

local function should_prompt_to_save()
  -- If only one window and buffer is a real file
  local wins = vim.api.nvim_list_wins()
  local valid_edit_win = false
  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    if is_editing_buffer(buf) then
      valid_edit_win = true
      break
    end
  end

  -- Trigger only on :qa or last window/buffer
  return #wins == 1 and valid_edit_win
end

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    if should_prompt_to_save() then
      local choice = vim.fn.input("Save session to Session.vim? (y/n) ")
      if choice:lower() == "y" then
        vim.cmd("mks! " .. vim.fn.stdpath("config") .. "/Session.vim")
        print("Session saved.")
      end
    end
  end,
})
