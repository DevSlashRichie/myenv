vim.cmd [[packadd packer.nvim]]

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
        'numToSrt/Commnet.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'kevinhwang91/nvim-bqf'
    use {
        'mrjones2014/legendary.nvim'
        requires = {
            'vim.keymap.set',
            'vim.api.nvim_create_augroup',
            'vim.api.nvim_create_autocmd',
        }
        config = function()
            require('legendary').find()
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            'nvim-lua/plenary.nvim'
        }
    }
    use 'stevearc/dressing.nvim'
end)
