-- this will include any basic plugin with no setup
return {
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        config = function ()
            require('vscode').setup({})
            vim.cmd.colorscheme('vscode')
        end
    },
    {"nvim-tree/nvim-web-devicons"},
    {"m4xshen/smartcolumn.nvim", opts = {}},
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup {
                options = { theme = "codedark" }
            }
        end
    },

    {"tpope/vim-fugitive"},
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
}
