return require'packer'.startup(function()
   use 'wbthomason/packer.nvim'
   -- use { "ellisonleao/gruvbox.nvim" }
   -- use 'luisiacc/gruvbox-baby'
   use "EdenEast/nightfox.nvim"
   use {
      'kyazdani42/nvim-tree.lua',
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
   }
   use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }
   use 'psliwka/vim-smoothie' use {
      'goolord/alpha-nvim',
      config = function ()
         require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
   }
   use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
   }

   use 'neovim/nvim-lspconfig'

   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'

   use 'saadparwaiz1/cmp_luasnip'
   use 'L3MON4D3/LuaSnip'
   use 'rafamadriz/friendly-snippets'

   use 'tpope/vim-commentary'

   use "williamboman/nvim-lsp-installer"

   use {
      'nvim-treesitter/nvim-treesitter',
   }

   use 'norcalli/nvim-colorizer.lua'

   use "lukas-reineke/indent-blankline.nvim"

   use("nathom/filetype.nvim")

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
        require("todo-comments").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

end)
