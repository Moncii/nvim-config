
require("globals") -- Handy functions for development purposes

require("mappings"                      )
require("settings"                      )
-- Plugin Configs

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug "catppuccin/nvim"

    Plug "kyazdani42/nvim-web-devicons"
    Plug "nvim-lualine/lualine.nvim"

    Plug "psliwka/vim-smoothie"

    Plug "glepnir/dashboard-nvim"
    Plug "romgrk/barbar.nvim"

    Plug "williamboman/nvim-lsp-installer"
    Plug "neovim/nvim-lspconfig"

    Plug "hrsh7th/nvim-cmp"
    Plug "hrsh7th/cmp-nvim-lsp"

    Plug "saadparwaiz1/cmp_luasnip"
    Plug "L3MON4D3/LuaSnip"

    Plug "dcampos/nvim-snippy"
    Plug "dcampos/cmp-snippy"

    Plug "onsails/lspkind.nvim"

    -------------------------------

    Plug "tpope/vim-commentary"
    Plug "nvim-treesitter/nvim-treesitter"
    Plug "m-demare/hlargs.nvim"

    Plug "lukas-reineke/indent-blankline.nvim"
    Plug "nathom/filetype.nvim"
    Plug "nvim-lua/plenary.nvim"

    Plug "nvim-telescope/telescope.nvim"
    Plug "nvim-telescope/telescope-file-browser.nvim"
    
    Plug "MunifTanjim/nui.nvim"
    Plug "Moncii/nvim-far"

vim.call('plug#end')

require("colorschemes-config.catppuccin")
require("dashboard-config"              )
require("lualine-config"                )
require("treesitter-config"             )
require("hlargs-config"                 )
require("filetype-config"               )
require("telescope-config"              )
require("lspinstaller-config"           )
require("lsp-config"                    )
require("lsp-config.nvim-cmp"           )
require("far-config"                    )
