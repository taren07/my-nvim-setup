vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'vim-jp/vimdoc-ja'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
    , config = function() require('plugins.neo-tree') end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require('lua.plugins.telescope-file-browser') end
  }
  use "EdenEast/nightfox.nvim"

  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)