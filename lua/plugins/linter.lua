-- lua/plugins/linter.lua
return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local lint = require("lint")
        -- 'eslint_d' necesita ser instalado con npm
        lint.linters_by_ft = {
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
        }

        -- Ejecuta el linter automáticamente al guardar y al cambiar texto
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = vim.api.nvim_create_augroup("linting", { clear = true }),
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
