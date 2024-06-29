return {
    "nvim-treesitter/nvim-treesitter",
    build = ":tsupdate",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            sync_install = true,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
