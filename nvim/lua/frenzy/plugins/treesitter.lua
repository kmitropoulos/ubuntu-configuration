return {
    {"nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python"},
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
}
