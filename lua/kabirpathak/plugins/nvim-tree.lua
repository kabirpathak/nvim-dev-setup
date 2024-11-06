local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
  update_focused_file = {
    enable = true,        -- Automatically focus the current file in the tree
    update_cwd = true,    -- Optionally update the current working directory
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  tab = {
    sync = {
      open = true,              -- Ensure nvim-tree stays open in new tabs
      close = true,             -- Close tree when all tabs are closed
    },
  },
})

