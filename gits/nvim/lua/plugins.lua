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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
--  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
  use {'neoclide/coc.nvim', branch = 'master', run = 'npm ci'}
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
  use {
      'akinsho/bufferline.nvim',
      tag="v2.*",
      requires = 'kyazdani42/nvim-web-devicons'
     }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
  use {
  "projekt0n/circles.nvim",
  requires = {"nvim-tree/nvim-web-devicons"},
  config = function()
    require("circles").setup()
  end
}
  use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
})
  use "nyoom-engineering/oxocarbon.nvim" 
  if packer_bootstrap then
    require('packer').sync()
  end
end)
