return {
    {
        'akinsho/toggleterm.nvim',
        lazy = true,
        event = "VeryLazy",
        version = "*",
        config = function ()
            require("toggleterm").setup({})

            function _G.set_terminal_keymaps()
              local opts = {buffer = 0}
              vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            end

            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
        end
    }
}
