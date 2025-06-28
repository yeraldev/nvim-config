-- lua/plugins/formatter.lua
return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- Cargar antes de escribir en un archivo
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = { "n", "v" },
            desc = "Formatear archivo o selección",
        },
    },
    opts = {
        -- Lista de formateadores por tipo de archivo
        formatters_by_ft = {
            -- Lua
            lua = { "stylua" },

            -- JavaScript/TypeScript
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            javascriptreact = { "prettierd", "prettier" },
            typescriptreact = { "prettierd", "prettier" },

            -- Web
            html = { "prettierd", "prettier" },
            css = { "prettierd", "prettier" },
            scss = { "prettierd", "prettier" },
            json = { "prettierd", "prettier" },
            jsonc = { "prettierd", "prettier" },
            yaml = { "prettierd", "prettier" },

            -- Markdown
            markdown = { "prettierd", "prettier" },

            -- Docker
            dockerfile = { "hadolint" },

            -- Shell
            sh = { "shfmt" },
            bash = { "shfmt" },
            zsh = { "shfmt" },
        },

        -- Configuración de formateo automático al guardar
        format_on_save = function(bufnr)
            -- Deshabilitar formateo automático en ciertos tipos de archivo
            local disable_filetypes = { c = true, cpp = true }
            if disable_filetypes[vim.bo[bufnr].filetype] then
                return
            end

            return {
                timeout_ms = 1000,
                lsp_fallback = true,
            }
        end,

        -- Configuración específica de formateadores
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
            },
            shfmt = {
                prepend_args = { "-i", "2" }, -- Indentación de 2 espacios
            },
        },

        -- Notificaciones de formateo
        notify_on_error = true,
    },

    config = function(_, opts)
        require("conform").setup(opts)

        -- Comando personalizado para formatear
        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil
            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start = { args.line1, 0 },
                    ["end"] = { args.line2, end_line:len() },
                }
            end
            require("conform").format({ async = true, lsp_fallback = true, range = range })
        end, { range = true })

        -- Comando para deshabilitar formateo automático
        vim.api.nvim_create_user_command("FormatDisable", function(args)
            if args.bang then
                -- FormatDisable! deshabilitará globalmente
                vim.g.disable_autoformat = true
            else
                -- FormatDisable deshabilitará solo para el buffer actual
                vim.b.disable_autoformat = true
            end
        end, {
            desc = "Deshabilitar formateo automático (! para global)",
            bang = true,
        })

        -- Comando para habilitar formateo automático
        vim.api.nvim_create_user_command("FormatEnable", function()
            vim.b.disable_autoformat = false
            vim.g.disable_autoformat = false
        end, {
            desc = "Habilitar formateo automático",
        })
    end,
}
