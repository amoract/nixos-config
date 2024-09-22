return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function ()
            require("bufferline").setup{
                highlights = {
                    fill = {
                        ctermbg = '#282828',
                        bg = '#282828'
                    },
                },
            }
        end
    }
}
