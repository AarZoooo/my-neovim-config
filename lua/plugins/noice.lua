return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },

    config = function()

        vim.cmd([[
        hi NotifyBackground guibg=#000000
        ]])

        require('notify').setup({
            background_color = "#000000", -- or whatever color you prefer
        })

        require("noice").setup({
            lsp = {
                progress = {
                    enabled = false,
                },

                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = false,
                lsp_doc_border = false,
            },
        })
    end
}
