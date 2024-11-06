-- Plugin setup
require("kabirpathak.plugins-setup")

-- Disable swap files
vim.opt.swapfile = false

-- Core settings
require("kabirpathak.core.options")
require("kabirpathak.core.keymaps")
require("kabirpathak.core.colorscheme")

-- Plugin configurations
require("kabirpathak.plugins.comment")
require("kabirpathak.plugins.nvim-tree")
require("kabirpathak.plugins.lualine")
require("kabirpathak.plugins.telescope")
require("kabirpathak.plugins.lazygit")
require("kabirpathak.plugins.git-blame")
require("kabirpathak.plugins.auto-session")

