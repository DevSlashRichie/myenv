
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'andweeb/presence.nvim'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        }
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'mrjones2014/legendary.nvim'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            'nvim-lua/plenary.nvim'
        }
    }
    use 'stevearc/dressing.nvim'
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use "numToStr/FTerm.nvim"

    use 'f-person/git-blame.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Anything related to LSP
    --
    --
    use "neovim/nvim-lspconfig" 
    use {
        "williamboman/nvim-lsp-installer",
        config = function() 
            require("nvim-lsp-installer").setup {}
        end
    }
 
    use {
            "neovim/nvim-lspconfig",
            after = "nvim-lsp-installer",
            config = function()
                local lspconfig = require("lspconfig")
                lspconfig.sumneko_lua.setup {}
            end
    }

    use {
        'ms-jpq/coq_nvim',
        branch = 'coq'
    }
    use {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
    }
    
    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
            'neovim/nvim-lspconfig'
        },
        config = function()

        require'navigator'.setup({
            lsp_installer = true,
        })
    end
})

end)
