return {
    {
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            local lualine = require('lualine')

            local colors = {
                bg       = '#1E1E2E',
                fg       = '#bbc2cf',
                yellow   = '#ECBE7B',
                cyan     = '#008080',
                darkblue = '#081633',
                green    = '#98be65',
                lime     = '#B8B926',
                orange   = '#FF8800',
                violet   = '#a9a1e1',
                pink     = '#D3869B',
                magenta  = '#c678dd',
                blue     = '#51afef',
                red      = '#ec5f67',
            }

            -- local conditions = {
            --     buffer_not_empty = function()
            --         return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
            --     end,
            --     hide_in_width = function()
            --         return vim.fn.winwidth(0) > 80
            --     end,
            --     check_git_workspace = function()
            --         local filepath = vim.fn.expand('%:p:h')
            --         local gitdir = vim.fn.finddir('.git', filepath .. ';')
            --         return gitdir and #gitdir > 0 and #gitdir < #filepath
            --     end,
            -- }

            local config = {
                options = {
                    theme = 'gruvbox-material',
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {},
                    lualine_c = {{ 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ' },}, },
                    lualine_x = {'branch', 'diff'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'},
                },
            }

            local function ins_left(pos, component)
              table.insert(config.sections.lualine_b, pos, component)
            end

            local function ins_right(pos, component)
                table.insert(config.sections.lualine_x, pos, component)
            end

            ins_left(1, {
                'filename',
                color = { fg = colors.lime, gui = 'bold' },
            })

            -- ins_left {
            --   function()
            --     return ''
            --   end,
            --   color = function()
            --     local mode_color = {
            --       n = colors.red,
            --       i = colors.green,
            --       v = colors.blue,
            --       [''] = colors.blue,
            --       V = colors.blue,
            --       c = colors.magenta,
            --       no = colors.red,
            --       s = colors.orange,
            --       S = colors.orange,
            --       [''] = colors.orange,
            --       ic = colors.yellow,
            --       R = colors.violet,
            --       Rv = colors.violet,
            --       cv = colors.red,
            --       ce = colors.red,
            --       r = colors.cyan,
            --       rm = colors.cyan,
            --       ['r?'] = colors.cyan,
            --       ['!'] = colors.red,
            --       t = colors.red,
            --     }
            --     return { fg = mode_color[vim.fn.mode()] }
            --   end,
            --   padding = { left = 1, right = 1 },
            -- }

            ins_right (3, {
              function()
                local msg = 'No Active Lsp'
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                  return msg
                end
                for _, client in ipairs(clients) do
                  local filetypes = client.config.filetypes
                  if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                    return client.name
                  end
                end
                return msg
              end,
              icon = ' LSP:',
              color = { fg = colors.lime, gui = 'bold' },
            })
            --
            -- ins_right {
            --   'o:encoding', -- option component same as &encoding in viml
            --   fmt = string.upper, -- I'm not sure why it's upper case either ;)
            --   cond = conditions.hide_in_width,
            --   color = { fg = colors.green, gui = 'bold' },
            -- }
            --
            -- ins_right {
            --   'fileformat',
            --   fmt = string.upper,
            --   icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
            --   color = { fg = colors.green, gui = 'bold' },
            -- }
            --
            -- ins_right {
            --   'branch',
            --   icon = '',
            --   color = { fg = colors.violet, gui = 'bold' },
            -- }
            --
            -- ins_right {
            --   'diff',
            --   -- Is it me or the symbol for modified us really weird
            --   symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            --   diff_color = {
            --     added = { fg = colors.green },
            --     modified = { fg = colors.orange },
            --     removed = { fg = colors.red },
            --   },
            --   cond = conditions.hide_in_width,
            -- }
            --
            require('lualine').setup(config)
        end
	},
}
