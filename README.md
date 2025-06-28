# 🚀 Mi Configuración Personal de Neovim

Una configuración moderna, completa y optimizada de Neovim con Lazy.nvim, diseñada para desarrollo web y programación general.

![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

## ✨ Características Principales

### 🎯 Core Features
- **🚀 Lazy Loading**: Gestión de plugins con [Lazy.nvim](https://github.com/folke/lazy.nvim)
- **🔧 LSP Completo**: Autocompletado, diagnósticos y navegación de código
- **🎨 Formateo Automático**: Con [Conform.nvim](https://github.com/stevearc/conform.nvim)
- **🔍 Fuzzy Finder**: Búsqueda potente con [Snacks.nvim](https://github.com/folke/snacks.nvim)
- **🌳 Syntax Highlighting**: Resaltado avanzado con TreeSitter
- **📊 Línea de Estado**: Información detallada con Lualine

### 🛠️ Herramientas Integradas
- **Git**: Integración completa con Lazygit
- **Terminal**: Terminal flotante integrado
- **Zen Mode**: Modo concentración sin distracciones
- **File Explorer**: Navegador de archivos eficiente
- **Diagnostics**: Detección de errores en tiempo real

## 📦 Plugins Incluidos

| Plugin | Descripción | Categoría |
|--------|-------------|-----------|
| **folke/lazy.nvim** | Gestor de plugins moderno | 🚀 Core |
| **folke/snacks.nvim** | Suite de utilidades (picker, terminal, zen) | 🔍 Utilities |
| **neovim/nvim-lspconfig** | Configuración LSP | 🔧 LSP |
| **hrsh7th/nvim-cmp** | Motor de autocompletado | 🔧 LSP |
| **stevearc/conform.nvim** | Formateo de código | 🎨 Formatting |
| **nvim-treesitter/nvim-treesitter** | Parsing y highlighting | 🌳 Syntax |
| **nvim-lualine/lualine.nvim** | Línea de estado | 📊 UI |
| **folke/tokyonight.nvim** | Tema de colores | 🎨 Theme |

## ⚙️ Requisitos

### Software Necesario
- **Neovim >= 0.10.0**
- **Git**
- **Node.js** (para LSP de JavaScript/TypeScript)
- **Python 3** (para algunos plugins)
- **Ripgrep** (para búsquedas rápidas)
- **fd-find** (para búsqueda de archivos)

### Herramientas Opcionales
- **Lazygit** (para integración Git)
- **tmux** (para mejor integración de terminal)

## 🚀 Instalación

### 1. Clonar la Configuración
```bash
# Respaldar configuración existente (si la tienes)
mv ~/.config/nvim ~/.config/nvim.backup

# Clonar esta configuración
git clone https://github.com/yeraldev/nvim-config.git ~/.config/nvim
```

### 2. Instalar Dependencias (Ubuntu/Debian)
```bash
# Herramientas básicas
sudo apt update
sudo apt install git nodejs npm python3 python3-pip

# Herramientas de búsqueda
sudo apt install ripgrep fd-find

# Lazygit (opcional pero recomendado)
curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest | grep browser_download_url | grep Linux_x86_64 | cut -d '"' -f 4 | wget -qi -
tar xf lazygit*.tar.gz
sudo install lazygit /usr/local/bin
```

### 3. Primer Inicio
```bash
nvim
```

Lazy.nvim se ejecutará automáticamente y descargará todos los plugins. Esto puede tomar unos minutos la primera vez.

### 4. Instalar Servidores LSP
Los servidores LSP se instalarán automáticamente con Mason, pero puedes verificar con:
```
:Mason
```

## 📁 Estructura del Proyecto

```
~/.config/nvim/
├── init.lua                 # Punto de entrada principal
├── lazy-lock.json           # Versiones bloqueadas de plugins
├── README.md               # Este archivo
├── ATAJOS_COMPLETOS.md     # Documentación completa de atajos
├── lua/
│   ├── config/
│   │   ├── init.lua        # Configuración base
│   │   ├── options.lua     # Opciones de Neovim
│   │   ├── keymaps.lua     # Atajos de teclado base
│   │   ├── lazy.lua        # Configuración de Lazy.nvim
│   │   └── colorscheme     # Configuración de tema
│   └── plugins/
│       ├── colorscheme.lua # Plugin de tema
│       ├── formatter.lua   # Configuración de Conform
│       ├── linter.lua      # Configuración de linting
│       ├── lsp.lua         # Configuración LSP completa
│       ├── lualine.lua     # Línea de estado
│       ├── snacks.lua      # Utilidades principales
│       └── treesitter.lua  # Configuración TreeSitter
```

## ⌨️ Atajos de Teclado Principales

> 📖 Para ver todos los atajos disponibles, consulta [ATAJOS_COMPLETOS.md](./ATAJOS_COMPLETOS.md)

### 🔥 Atajos Más Usados

| Tecla | Descripción |
|-------|-------------|
| `<Space>` | **Tecla líder** |
| `jk` | Salir del modo inserción |
| `<leader>ff` | Buscar archivos |
| `<leader>fg` | Búsqueda en vivo |
| `<leader>f` | Formatear código |
| `<Ctrl-\>` | Terminal flotante |
| `<leader>gg` | Abrir Lazygit |

### 🧭 Navegación
- `<Ctrl-hjkl>`: Moverse entre ventanas
- `gd`: Ir a definición
- `gr`: Ver referencias
- `K`: Documentación

### 🔍 Búsqueda y LSP
- `<leader>ff`: Buscar archivos
- `<leader>fg`: Búsqueda en contenido
- `<leader>fb`: Buscar buffers
- `<leader>ca`: Acciones de código
- `<leader>rn`: Renombrar símbolo

## 🎨 Personalización

### Cambiar Tema de Colores
Edita `lua/plugins/colorscheme.lua`:
```lua
return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night", -- storm, moon, night, day
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
```

### Agregar Nuevos Plugins
Crea un nuevo archivo en `lua/plugins/` o edita uno existente:
```lua
return {
  "autor/nombre-plugin",
  config = function()
    -- Configuración del plugin
  end,
}
```

### Modificar Atajos
Edita `lua/config/keymaps.lua` para atajos básicos o los archivos de plugins para atajos específicos.

## 🔧 Lenguajes Soportados

### ✅ Configurados por Defecto
- **Lua** (lua_ls + stylua)
- **JavaScript/TypeScript** (ts_ls + prettier)
- **HTML/CSS** (html/cssls + prettier)
- **JSON** (jsonls + prettier)
- **Docker** (dockerls)

### 🔄 Fácil de Agregar
Para agregar soporte para un nuevo lenguaje, edita `lua/plugins/lsp.lua`:
```lua
local servers = {
    "lua_ls",
    "ts_ls",
    "html",
    "cssls",
    "python-lsp-server", -- Agregar aquí
}
```

## 🐛 Solución de Problemas

### Plugin No Carga
```bash
# Limpiar caché de Lazy
rm -rf ~/.local/share/nvim
nvim
```

### LSP No Funciona
```vim
:Mason
:LspInfo
:checkhealth
```

### Formateo No Funciona
```vim
:ConformInfo
```

## 📊 Performance

Esta configuración está optimizada para:
- ⚡ **Inicio rápido**: ~100ms con lazy loading
- 🔋 **Bajo uso de recursos**: <100MB RAM típico
- 🚀 **Navegación fluida**: Sin lag en archivos grandes
- 🎯 **Autocompletado rápido**: <50ms respuesta típica

## 🤝 Contribuir

¿Encontraste un bug o tienes una mejora? ¡Las contribuciones son bienvenidas!

1. Fork el repositorio
2. Crea una rama feature (`git checkout -b feature/mejora`)
3. Commit tus cambios (`git commit -am 'Agregar mejora'`)
4. Push a la rama (`git push origin feature/mejora`)
5. Crea un Pull Request

## 📝 Licencia

Este proyecto está bajo la licencia MIT. Ver [LICENSE](LICENSE) para más detalles.

## 🙏 Agradecimientos

- [folke](https://github.com/folke) por sus increíbles plugins
- [Neovim team](https://neovim.io/) por este increíble editor
- La comunidad de Neovim por el constante desarrollo

---

<div align="center">

**⭐ Si te gusta esta configuración, dale una estrella al repo ⭐**

*Construido con ❤️ para la comunidad de Neovim*

</div>
