

return require('legendary').setup({
        keymaps = {
            { 
                '<leader>nt', 
                ':Neotree <CR>', 
                description = "Open file navigator",
                opts = {}
            },
            {
                '<C-p>',
                '<C-w>w',
                description = "Move to next window"
            },
            {
                '<leader>w',
                '<Cmd>BufferNext<CR>',
                description = "Move to next tab",
                opts = { silent = true }
            },
            {
                '<leader>e',
                '<Cmd>BufferPrevious<CR>',
                description = "Move to prev tab",
                opts = { silent = true }
            },
            {
                '<leader>q',
                '<Cmd>BufferClose<CR>',
                description = "Close current tab",
                opts = { silent = true }
            },
            {
                '<leader>1',
                '<Cmd>BufferGoto 1<CR>'
            },
            {
                '<leader>2',
                '<Cmd>BufferGoto 2<CR>'
            },
            {
                '<leader>3',
                '<Cmd>BufferGoto 3<CR>'
            },
            {
                '<leader>4',
                '<Cmd>BufferGoto 4<CR>'
            },
            {
                '<leader>5',
                '<Cmd>BufferGoto 5<CR>'
            },
            {
                '<leader>6',
                '<Cmd>BufferGoto 6<CR>'
            },
            {
                '<leader>7',
                '<Cmd>BufferGoto 7<CR>'
            },
            {
                '<leader>8',
                '<Cmd>BufferGoto 8<CR>'
            },
            {
                '<leader>9',
                '<Cmd>BufferGoto 9<CR>'
            },
            {
                '<leader>0',
                '<Cmd>BufferGoto 0<CR>'
            },
            {
                '<leader>§e',
                '<Cmd>BufferPrevious<CR>'
            },
            {
                '<leader>§w',
                '<Cmd>BufferNext<CR>'
            }, 
            {
                '<leader>ty',
                function()
                    require('FTerm').toggle()
                end
            },
            {
                '<C-b>',
                function()
                    require('goto-preview').goto_preview_definition()
                end
            },
            {
                '<C-A-b>',
                function()
                    require('goto-preview').goto_preview_implementation()
                end
            }
        }
    })
