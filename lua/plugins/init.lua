vim.cmd.packadd "packer.nvim"

return require('packer').startup(function(use) 
  use 'wbthomason/packer.nvim'
  use 'vim-jp/vimdoc-ja'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require('plugins.lualine')
    end
  }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require('plugins.neo-tree')
    end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
        require('plugins.telescope')
      end
  }
  use "EdenEast/nightfox.nvim"

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use { 'onsails/lspkind-nvim',
    config = function()
        require('plugins.lspkind')
      end
  }
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use { 'hrsh7th/nvim-cmp',
    config = function()
        require('plugins.cmp')
      end
  }
  use { 'neovim/nvim-lspconfig',
    config = function()
        require('plugins.lspconfig')
      end
  }

  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)