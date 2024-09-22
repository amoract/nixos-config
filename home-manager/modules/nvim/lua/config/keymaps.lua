local keymap = vim.keymap

-- Quit
keymap.set('n', '<C-q>', '<cmd>:q<CR>')

-- Save
keymap.set('i', '<C-s>', '<cmd>:w<CR>')
keymap.set('n', '<C-s>', '<cmd>:w<CR>')

-- NvimTree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')

-- Navigation
keymap.set('n', '<c-k>', ':wincmd k<CR>')
keymap.set('n', '<c-j>', ':wincmd j<CR>')
keymap.set('n', '<c-h>', ':wincmd h<CR>')
keymap.set('n', '<c-l>', ':wincmd l<CR>')
keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
keymap.set('n', '|', ':vsplit<CR>')
keymap.set('n', '\\', ':split<CR>')

-- Tabs
keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')

-- Terminal
keymap.set('n', '<leader>t', ':ToggleTerm direction=float<CR>')
keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')

-- Lsp
keymap.set('n', '<leader>lD', vim.diagnostic.open_float)
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)
keymap.set('n', '<leader>ld', vim.diagnostic.setloclist)

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>s/', function()
    builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
    }
end, { desc = '[S]earch [/] in Open Files' })
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
