vim.cmd.packadd "packer.nvim"

return require('packer').startup(function(use) 
  use {
    'navarasu/onedark.nvim',
    config = function()
        require('plugins.colorscheme')
      end
  }

  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
        require('plugins.web-devicons')
      end
  }

  use 'vim-jp/vimdoc-ja'

  use {
    'nvim-lualine/lualine.nvim',
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

  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
        require('plugins.telescope')
      end
  }

  use "nvim-telescope/telescope-file-browser.nvim"
  use { 'onsails/lspkind-nvim',
    config = function()
        require('plugins.lspkind')
      end
  }

  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use { 'hrsh7th/nvim-cmp',
    config = function()
        require('plugins.cmp')
      end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
        require('plugins.autopairs')
      end
  }
  use {
    'windwp/nvim-ts-autotag',
    config = function()
        require('plugins.ts-autotag')
      end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        require('plugins.treesitter')
      end
  }

  use { 'neovim/nvim-lspconfig',
    config = function()
        require('plugins.lspconfig')
      end
  }

  use {
    'akinsho/nvim-bufferline.lua',
    config = function()
        require('plugins.bufferline')
      end
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('plugins.colorizer')
      end
  }

  use {
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    config = function()
        require('plugins.lspsaga')
      end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
        require('plugins.null-ls')
      end
  }
  use {
    'MunifTanjim/prettier.nvim',
    config = function()
        require('plugins.prettier')
      end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('plugins.gitsigns')
      end
  }

  use {
    'dinhhuy258/git.nvim',
    config = function()
        require('plugins.git')
      end
  }


end)