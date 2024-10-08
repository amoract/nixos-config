return {
    {
        "hrsh7th/nvim-cmp",
        event = 'InsertEnter',
        dependencies = {
            -- {
            --     'L3MON4D3/LuaSnip',
            --     build = (function()
            --         if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            --             return
            --         end
            --         return 'make install_jsregexp'
            --     end)(),
            --     dependencies = {
            --     -- `friendly-snippets` contains a variety of premade snippets.
            --     --    See the README about individual language/framework/plugin snippets:
            --     --    https://github.com/rafamadriz/friendly-snippets
            --     -- {
            --     --   'rafamadriz/friendly-snippets',
            --     --   config = function()
            --     --     require('luasnip.loaders.from_vscode').lazy_load()
            --     --   end,
            --     -- },
            --     },
            -- },
            -- 'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        },
        config = function()
            local cmp = require 'cmp'
            -- local luasnip = require 'luasnip'
            -- luasnip.config.setup {}
            cmp.setup {
                -- snippet = {
                --     expand = function(args)
                --         luasnip.lsp_expand(args.body)
                --     end,
                -- },
                -- completion = { completeopt = 'menu,menuone,noinsert' },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered()
                },
                mapping = cmp.mapping.preset.insert {
                    -- ['<C-l>'] = cmp.mapping(function()
                    --     if luasnip.expand_or_locally_jumpable() then
                    --         luasnip.expand_or_jump()
                    --     end
                    -- end, { 'i', 's' }),
                    -- ['<C-h>'] = cmp.mapping(function()
                    --     if luasnip.locally_jumpable(-1) then
                    --         luasnip.jump(-1)
                    --     end
                    -- end, { 'i', 's' }),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete (),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({select = true}),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end, {"i", "s"}),
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, {"i", "s"})
                },
                sources = {
                    { name = 'nvim_lsp' },
                    -- { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'nvim_lsp_signature_help' },
                },
            }
            cmp.setup.cmdline({'/', '?'}, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {{name = 'buffer'}}
            })
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
            })
        end,
    },
}
