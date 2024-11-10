return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'williamboman/mason.nvim', config = true },
        'williamboman/mason-lspconfig.nvim',
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {
                "lua_ls",
                "jdtls",
            },
        }

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                  workspace = {
                    library = {
                      [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                      [vim.fn.stdpath "config" .. "/lua"] = true,
                    },
                  },
                },
            }
        }

        lspconfig.jdtls.setup{
            cmd = { 'jdtls' },
        }
    end
}
