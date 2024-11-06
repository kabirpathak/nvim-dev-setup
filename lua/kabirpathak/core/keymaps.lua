vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>")

-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')
-- source vim rc
keymap.set('n', '<leader>vs', ':source $MYVIMRC<CR>')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

--vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

--auto-session
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for cwd" })

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>+", function()
  local view = require'nvim-tree.view'
  view.View.width = view.View.width + 5
  view.resize()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>-", function()
  local view = require'nvim-tree.view'
  view.View.width = view.View.width - 5
  view.resize()
end, { noremap = true, silent = true })


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

--lazygit
keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { noremap = true, silent = true })
