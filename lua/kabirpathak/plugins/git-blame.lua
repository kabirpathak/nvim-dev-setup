local status, git_blame = pcall(require, "git-blame")
if not status then
  return
end 

git_blame.setup({
  opts = {
    enabled = true, 
    message_template = " <summary> • <date> • <author>", 
    date_format = "%m-%d-%Y %H:%M:%S", 
    virtual_text_column = 1,
  }
})
