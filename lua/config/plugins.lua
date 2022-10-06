-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand

vim.api.nvim_create_autocmd('BufWritePost', {
  group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile',
})


require('packer').startup(
  function(use)
    use('wbthomason/packer.nvim')
    use({
      'kyazdani42/nvim-tree.lua',
      config = function()
        require('config.plugins.NvimTree')
      end
    })
    use('tpope/vim-fugitive')
    use('jiangmiao/auto-pairs')

    -- Farebne schemy, Ikonky, UI, statusbar ...
    use("EdenEast/nightfox.nvim")
    use({
      "kyazdani42/nvim-web-devicons",
      config = function()
        require('nvim-web-devicons').setup()
      end
    })

    use({
      'akinsho/bufferline.nvim',
      config = function()
        require('config.plugins.Bufferline');
      end
    })

    use('moll/vim-bbye')

    use {
      'nvim-lualine/lualine.nvim',
      config = function()
        require("config.plugins.Lualine");
      end
    }

    use({
      'terrortylor/nvim-comment',
      config = function()
        require('config.plugins.NvimComment')
      end
    })

    use({
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    })
    ------------------------------------------------
    use({
      "akinsho/toggleterm.nvim",
      tag = '*',
      config = function()
        require('config.plugins.ToggleTerm')
      end
    })

    use({
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { { 'nvim-lua/plenary.nvim' } },
      config = function()
        require("config.plugins.Telescope");
      end
    })

    -- Autosave
    use({
      "Pocco81/auto-save.nvim",
      config = function()
        require("auto-save").setup {}
      end
    })

    -- IDE funkcionality
    use({
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require('config.plugins.TreeSitter')
      end
    })

    use('neovim/nvim-lspconfig')
    use({
      'williamboman/nvim-lsp-installer',
      config = function()
        require('config.plugins.LspInstaller')
      end
    })

    -- Snippet engines
    use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

    -- Autocomplete
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use({
      'hrsh7th/nvim-cmp',
      config = function()
        require('config.plugins.NvimCmp')
      end
    })

  end
)
