-- install packer on opening nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- updates old plugins, installs new ones
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'folke/tokyonight.nvim'
  -- use 'EdenEast/nightfox.nvim'
  -- use 'bluz71/vim-nightfly-guicolors'
  use 'christoomey/vim-tmux-navigator' -- ctrl + j,k / ctrl h,l
  use 'szw/vim-maximizer' -- ' ' sm
  use 'tpope/vim-surround' -- ys w " / cs " ' / ds "
  use 'vim-scripts/ReplaceWithRegister' -- yw grw
  use 'numToStr/Comment.nvim' -- gcc
  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'f-person/git-blame.nvim'
  
  -- lazygit
  use({ "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    requires = {
      'nvim-lua/plenary.nvim',
    },
  })
  
  -- fuzzy finding
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use 'nvim-telescope/telescope-ui-select.nvim'
  use'nvim-telescope/telescope.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end
end)

