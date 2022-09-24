
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require'packer'.startup(function()
      
    use 'wbthomason/packer.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }

    use('kyazdani42/nvim-web-devicons') -- Icons
    
    use 'nvim-lualine/lualine.nvim'
    
    use 'psliwka/vim-smoothie'

    use("glepnir/dashboard-nvim") -- Welcom Screen

    use('romgrk/barbar.nvim')

    -- LSP and Auto-Complete ------------
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp

    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'dcampos/nvim-snippy'
    use 'dcampos/cmp-snippy'

    use "onsails/lspkind.nvim"

    ------------------------------------

    use 'tpope/vim-commentary'


    use {
        'nvim-treesitter/nvim-treesitter',
    }
    use {
        'm-demare/hlargs.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }

    -- use 'David-Kunz/markid'
    -- use 'norcalli/nvim-colorizer.lua'

    use "lukas-reineke/indent-blankline.nvim"

    use("nathom/filetype.nvim")
    use('ziglang/zig.vim')

    use('nvim-lua/plenary.nvim')

    use {
        "folke/todo-comments.nvim",
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
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }

    use 'MunifTanjim/nui.nvim'
    use("/home/yoshi/Documents/Projects/Lua/nvim-far")

    if packer_bootstrap then
        require('packer').sync()
    end

end)
