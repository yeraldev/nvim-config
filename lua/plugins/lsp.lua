-- ... otros plugins como tokyonight, lualine, etc.

-- Autocompletado y LSP (VERSIÓN ACTUALIZADA)
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Instala y gestiona automáticamente los servidores LSP
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        { "WhoIsSethDaniel/mason-tool-installer.nvim" }, -- Para instalar formateadores

        -- Motor de autocompletado (sin cambios aquí)
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
    },
    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        -- `capabilities` le dice al servidor LSP qué funcionalidades soporta nuestro cliente (nvim-cmp)
        local capabilities = cmp_lsp.default_capabilities()

        cmp.setup({
            -- sin cambios aquí
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
            }),
        })

        -- Primero configuramos Mason
        require('mason').setup()

        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')

        -- Esta es la lista de LSPs que queremos instalar.
        -- Mason se asegurará de que estén disponibles.
        local servers = {
            "lua_ls",      -- Para Lua (lua-language-server)
            "ts_ls",       -- Para TypeScript y JavaScript
            "html",        -- Para HTML
            "cssls",       -- Para CSS
            "tailwindcss", -- Para autocompletado de clases de TailwindCSS
            "dockerls",    -- Para Dockerfiles
            "jsonls",      -- Para archivos JSON (como package.json)
        }

        mason_lspconfig.setup({
            ensure_installed = servers,
        })
        
        -- También instalamos herramientas de formateo con Mason
        require('mason-tool-installer').setup({
            ensure_installed = {
                'stylua', -- Formateador para Lua
                'prettierd', -- Formateador para JS/TS/CSS/HTML
            },
        })

        -- Configuración manual de cada servidor (más compatible)
        for _, server in ipairs(servers) do
            if server == "lua_ls" then
                lspconfig.lua_ls.setup({
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            runtime = {
                                version = 'LuaJIT'
                            },
                            diagnostics = {
                                globals = { 'vim' }
                            },
                            workspace = {
                                library = vim.api.nvim_get_runtime_file("", true)
                            },
                            telemetry = {
                                enable = false
                            }
                        }
                    }
                })
            elseif server == "ts_ls" then
                lspconfig.ts_ls.setup({
                    capabilities = capabilities,
                    init_options = {
                        plugins = {
                            {
                                name = "@tailwindcss/language-server",
                                filetypes = { "javascript", "typescript", "react" },
                            },
                        },
                    },
                    filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" }
                })
            else
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end
        end

        -- Atajos de teclado para LSP
        local keymap = vim.keymap.set
        -- Estos atajos solo se activarán cuando un LSP se adjunte a un buffer
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }
                keymap('n', 'gD', vim.lsp.buf.declaration, opts)
                keymap('n', 'gd', vim.lsp.buf.definition, opts)
                keymap('n', 'K', vim.lsp.buf.hover, opts)
                keymap('n', 'gi', vim.lsp.buf.implementation, opts)
                keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
                keymap('n', '<leader>ca', vim.lsp.buf.code_action, opts)
                keymap('n', 'gr', vim.lsp.buf.references, opts)
                keymap('n', '<leader>d', vim.diagnostic.open_float, opts)
            end,
        })
    end,
}
