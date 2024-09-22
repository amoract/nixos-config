return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         require("catppuccin").setup({
    --             -- custom_highlights = function(colors)
    --             --     return {
    --             --         TabLineFill = { bg = colors.pink },
    --             --     }
    --             -- end,
    --             transparent_background = true,
    --             integrations = {
    --                 cmp = true,
    --                 dashboard = true,
    --                 flash = true,
    --                 lsp_trouble = true,
    --                 mason = true,
    --                 native_lsp = {
    --                     enabled = true,
    --                     underlines = {
    --                           errors = { "undercurl" },
    --                           hints = { "undercurl" },
    --                           warnings = { "undercurl" },
    --                           information = { "undercurl" },
    --                     },
    --                 },
    --                 telescope = true,
    --                 treesitter = true,
    --                 treesitter_context = true,
    --                 which_key = true,
    --             }
    --         })
    --         -- vim.cmd.colorscheme "catppuccin-frappe"
    --     end,
    -- },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup()
            vim.cmd("colorscheme gruvbox")
        end,
    }
}
