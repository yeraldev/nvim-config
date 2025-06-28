-- lua/core/keymaps.lua

local keymap = vim.keymap.set

-- Establece la tecla Líder. La más común es la barra espaciadora.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- MODO NORMAL
-- Moverse entre ventanas
keymap("n", "<C-h>", "<C-w>h", { desc = "Mover a la ventana izquierda" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Mover a la ventana derecha" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Mover a la ventana de abajo" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Mover a la ventana de arriba" })

-- Redimensionar ventanas
keymap("n", "<leader>h", ":vertical resize -2<CR>", { desc = "Encoger ventana horizontalmente" })
keymap("n", "<leader>l", ":vertical resize +2<CR>", { desc = "Agrandar ventana horizontalmente" })
keymap("n", "<leader>j", ":resize -2<CR>", { desc = "Encoger ventana verticalmente" })
keymap("n", "<leader>k", ":resize +2<CR>", { desc = "Agrandar ventana verticalmente" })

-- MODO INSERCIÓN
-- Moverse rápidamente para salir del modo inserción
keymap("i", "jk", "<ESC>", { desc = "Salir del modo inserción" })

-- NAVEGACIÓN CENTRADA
-- Mantener el cursor centrado al navegar
keymap("n", "<C-d>", "<C-d>zz", { desc = "Media página abajo (centrado)" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Media página arriba (centrado)" })
keymap("n", "n", "nzzzv", { desc = "Siguiente búsqueda (centrado)" })
keymap("n", "N", "Nzzzv", { desc = "Búsqueda anterior (centrado)" })

-- MODO VISUAL
-- Mantener la selección al indentar
keymap("v", "<", "<gv", { desc = "Indentar a la izquierda" })
keymap("v", ">", ">gv", { desc = "Indentar a la derecha" })
