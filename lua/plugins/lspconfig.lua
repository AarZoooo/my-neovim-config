return {
    -- Mason
    {
        "williamboman/mason.nvim",

        config = function()
            require('mason').setup()
        end
    },

    -- Mason-LSPConfig
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pylyzer",
                    "lwc_ls",
                    "jdtls",
                }
            })
        end
    },

    -- Nvim-LSPConfig
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.pylyzer.setup({
                capabilities = capabilities
            })
            lspconfig.lwc_ls.setup({
                capabilities = capabilities
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities
            })

            vim.keymap.set('n', '<Leader>ch', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<Leader>cd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
