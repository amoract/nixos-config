return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "BufReadPost",
        opts = {
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
              "bash",
              "c",
              "cpp",
              "diff",
              "html",
              "javascript",
              "jsdoc",
              "json",
              "jsonc",
              "lua",
              "luadoc",
              "luap",
              "markdown",
              "markdown_inline",
              "python",
              "query",
              "regex",
              "toml",
              "tsx",
              "typescript",
              "vim",
              "vimdoc",
              "xml",
              "yaml",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
