local status, auto_session = pcall(require, "auto-session")
if not status then
  print("auto-session not found!")
  return
end

auto_session.setup({
  auto_restore_enabled = false,  -- Enable auto session restore
  auto_session_save_on_exit = true,  -- Save session on exit
  auto_session_restore_on_start = true,  -- Restore session on Neovim start
  auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
  auto_session_root_dir = vim.fn.expand("~/.config/nvim/sessions/"),
  auto_session_file_name = function()
    return vim.fn.expand("%:p:h:t")  -- Use the current file's directory as session name
  end,
})

