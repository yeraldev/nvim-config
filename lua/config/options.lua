local opt = vim.opt -- para escribir menos

-- NÚMEROS DE LÍNEA
opt.relativenumber = true -- Muestra números de línea relativos
opt.number = true         -- Muestra el número de la línea actual

-- INDENTACIÓN
opt.tabstop = 4        -- Número de espacios que cuenta un tab
opt.softtabstop = 4    -- Número de espacios al presionar Tab en modo inserción
opt.shiftwidth = 4     -- Número de espacios para la auto-indentación
opt.expandtab = true   -- Usa espacios en lugar de tabs
opt.autoindent = true  -- Auto-indenta la nueva línea

-- BÚSQUEDA
opt.ignorecase = true  -- Ignora mayúsculas/minúsculas al buscar
opt.smartcase = true   -- A menos que la búsqueda contenga una mayúscula

-- APARIENCIA
opt.termguicolors = true -- Habilita colores de 24-bit en la terminal
opt.signcolumn = "yes"   -- Siempre muestra la columna de signos (para git, LSP, etc.)
opt.wrap = false         -- Desactiva el ajuste de línea automático

-- SCROLL Y CURSOR
opt.scrolloff = 8         -- Mantiene 8 líneas arriba/abajo del cursor
opt.sidescrolloff = 8     -- Mantiene 8 columnas a los lados del cursor
opt.cursorline = true     -- Resalta la línea actual del cursor

-- OTROS
opt.clipboard = "unnamedplus" -- Usa el portapapeles del sistema
opt.swapfile = false          -- No crear archivos swap
