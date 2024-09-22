return {
    {
        'nvimdev/dashboard-nvim',
        lazy = true,
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'doom',
                config = {
                    load_on_startup = false,
                    header = {
                        "           ▄ ▄                   ",
                        "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
                        "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
                        "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
                        "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
                        "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
                        "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
                        "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
                        "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
                    },
                    center = {
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Find files',
                            desc_hl = 'String',
                            key = 'f',
                            keymap = 'SPC f f',
                            key_hl = 'Number',
                            action = ':Telescope find_files'
                        },
                        {
                            icon = '󰈚 ',
                            icon_hl = 'Title',
                            desc = 'Open recently',
                            desc_hl = 'String',
                            key = 'r',
                            keymap = 'SPC f r',
                            key_hl = 'Number',
                            action = ':Telescope oldfiles'
                        },
                        {
                            icon = '󰈭 ',
                            icon_hl = 'Title',
                            desc = 'Find text',
                            desc_hl = 'String',
                            key = 'w',
                            keymap = 'SPC f w',
                            key_hl = 'Number',
                            action = ':Telescope live_grep'
                        },
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Git Braches',
                            desc_hl = 'String',
                            key = 'b',
                            keymap = 'SPC g b',
                            key_hl = 'Number',
                            action = ':Telescope git_branches'
                        },
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Bookmarks',
                            desc_hl = 'String',
                            key = 'm',
                            keymap = 'SPC m a',
                            key_hl = 'Number',
                            action = ':Telescope marks'
                        },
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Themes',
                            desc_hl = 'String',
                            key = 't',
                            keymap = 'SPC t h',
                            key_hl = 'Number',
                            action = ':Telescope themes'
                        },
                    },
                },
            }
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
}
