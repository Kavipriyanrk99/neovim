return {
     "nvim-treesitter/nvim-treesitter",
     build = ":TSUpdate", 

    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "lua", "java", "javascript", "python", "sql", "bash", "vim", "vimdoc", "markdown" },

            sync_install = false,

            auto_install = true,

            indent = {
                 enable = true
            },

            highlight = {
                 enable = true,
            },
        }
    end
}
