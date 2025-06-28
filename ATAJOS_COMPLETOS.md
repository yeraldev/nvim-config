# 🚀 ATAJOS DE TECLADO COMPLETOS - NEOVIM

## 📋 ÍNDICE
- [Configuración Básica](#configuración-básica)
- [Navegación Básica](#navegación-básica)
- [Gestión de Ventanas](#gestión-de-ventanas)
- [Formateo de Código](#formateo-de-código)
- [LSP (Language Server Protocol)](#lsp-language-server-protocol)
- [Snacks Picker (Similar a Telescope)](#snacks-picker-similar-a-telescope)
- [Git](#git)
- [Utilidades Generales](#utilidades-generales)
- [Terminal](#terminal)
- [Treesitter Text Objects](#treesitter-text-objects)
- [Picker Internal Keys](#picker-internal-keys)

---

## ⚙️ CONFIGURACIÓN BÁSICA
| Tecla | Descripción |
|-------|-------------|
| `<Space>` | **Tecla líder** |

---

## 🧭 NAVEGACIÓN BÁSICA

### Navegación Entre Ventanas
| Tecla | Descripción |
|-------|-------------|
| `<Ctrl-h>` | Mover a la ventana izquierda |
| `<Ctrl-l>` | Mover a la ventana derecha |
| `<Ctrl-j>` | Mover a la ventana de abajo |
| `<Ctrl-k>` | Mover a la ventana de arriba |

### Modo Inserción
| Tecla | Descripción |
|-------|-------------|
| `jk` | Salir del modo inserción |

### Modo Visual
| Tecla | Descripción |
|-------|-------------|
| `<` | Indentar a la izquierda (mantiene selección) |
| `>` | Indentar a la derecha (mantiene selección) |

### Navegación de Referencias
| Tecla | Descripción |
|-------|-------------|
| `]]]` | Siguiente referencia |
| `[[[` | Referencia anterior |

### Navegación Centrada
| Tecla | Descripción |
|-------|-------------|
| `<Ctrl-d>` | Media página abajo (centrado) |
| `<Ctrl-u>` | Media página arriba (centrado) |
| `n` | Siguiente búsqueda (centrado) |
| `N` | Búsqueda anterior (centrado) |

---

## 🪟 GESTIÓN DE VENTANAS

### Redimensionar Ventanas
| Tecla | Descripción |
|-------|-------------|
| `<leader>h` | Encoger ventana horizontalmente |
| `<leader>l` | Agrandar ventana horizontalmente |
| `<leader>j` | Encoger ventana verticalmente |
| `<leader>k` | Agrandar ventana verticalmente |

---

## 🎨 FORMATEO DE CÓDIGO
| Tecla | Descripción | Modo |
|-------|-------------|------|
| `<leader>f` | Formatear archivo o selección | Normal, Visual |

---

## 🔧 LSP (Language Server Protocol)
| Tecla | Descripción |
|-------|-------------|
| `gD` | Ir a declaración |
| `gd` | Ir a definición |
| `K` | Mostrar documentación |
| `gi` | Ir a implementación |
| `gr` | Mostrar referencias |
| `<leader>rn` | Renombrar símbolo |
| `<leader>ca` | Acciones de código |
| `<leader>d` | Mostrar diagnósticos |

---

## 🔍 SNACKS PICKER (Similar a Telescope)

### Búsqueda de Archivos y Contenido
| Tecla | Descripción |
|-------|-------------|
| `<leader>ff` | Buscar archivos |
| `<leader>fg` | Búsqueda en vivo (Live Grep) |
| `<leader>fb` | Buscar buffers |
| `<leader>fh` | Buscar ayuda |
| `<leader>fr` | Archivos recientes |
| `<leader>fc` | Buscar archivos de configuración |
| `<leader>fw` | Buscar palabra bajo el cursor |
| `<leader>fs` | Buscar símbolos |
| `<leader>fd` | Buscar diagnósticos |
| `<leader>fk` | Buscar mapas de teclas |
| `<leader>fm` | Buscar marcas |
| `<leader>fj` | Buscar saltos |
| `<leader>fo` | Buscar archivos antiguos |
| `<leader>ft` | Buscar temas de colores |
| `<leader>fR` | Reanudar último picker |

### Modo Visual
| Tecla | Descripción |
|-------|-------------|
| `<leader>fg` | Buscar selección |

---

## 🔍 LSP PICKER
| Tecla | Descripción |
|-------|-------------|
| `<leader>lr` | Referencias LSP |
| `<leader>ld` | Definiciones LSP |
| `<leader>li` | Implementaciones LSP |
| `<leader>lt` | Definiciones de tipo LSP |
| `<leader>ls` | Símbolos del documento LSP |
| `<leader>lS` | Símbolos del workspace LSP |

---

## 🔀 GIT
| Tecla | Descripción |
|-------|-------------|
| `<leader>gc` | Commits de Git |
| `<leader>gs` | Estado de Git |
| `<leader>gS` | Stash de Git |
| `<leader>gB` | Abrir en navegador (Git Browse) |
| `<leader>gb` | Blame de línea |
| `<leader>gf` | Historial del archivo actual (Lazygit) |
| `<leader>gg` | Abrir Lazygit |
| `<leader>gl` | Log de Lazygit |

---

## 🛠️ UTILIDADES GENERALES

### Zen Mode y Productividad
| Tecla | Descripción |
|-------|-------------|
| `<leader>z` | Alternar Zen Mode |
| `<leader>Z` | Alternar Zoom |
| `<leader>.` | Buffer de notas (Scratch) |
| `<leader>S` | Seleccionar buffer de notas |

### Notificaciones y Buffers
| Tecla | Descripción |
|-------|-------------|
| `<leader>n` | Historial de notificaciones |
| `<leader>un` | Descartar todas las notificaciones |
| `<leader>bd` | Eliminar buffer |

### Archivos
| Tecla | Descripción |
|-------|-------------|
| `<leader>cR` | Renombrar archivo |

---

## 💻 TERMINAL
| Tecla | Descripción | Modo |
|-------|-------------|------|
| `<Ctrl-/>` | Alternar terminal | Normal |
| `<Ctrl-_>` | Alternar terminal (alternativo) | Normal |
| `<Ctrl-/>` | Cerrar terminal | Terminal |
| `<Ctrl-_>` | Cerrar terminal (alternativo) | Terminal |

---

## 📝 TREESITTER TEXT OBJECTS
| Tecla | Descripción |
|-------|-------------|
| `af` | Función completa (outer) |
| `if` | Interior de función |
| `ac` | Condicional completo (outer) |
| `ic` | Interior de condicional |
| `al` | Loop completo (outer) |
| `il` | Interior de loop |

---

## 🎛️ PICKER INTERNAL KEYS
*(Estas teclas funcionan cuando estás dentro de un picker/buscador)*

### Navegación en Picker
| Tecla | Descripción |
|-------|-------------|
| `<Ctrl-c>` | Cerrar picker |
| `<Esc>` | Cerrar picker |
| `<Ctrl-n>` | Siguiente elemento |
| `<Ctrl-p>` | Elemento anterior |
| `<Down>` | Siguiente elemento |
| `<Up>` | Elemento anterior |
| `<Ctrl-j>` | Siguiente elemento |
| `<Ctrl-k>` | Elemento anterior |

### Acciones en Picker
| Tecla | Descripción |
|-------|-------------|
| `<Enter>` | Confirmar selección |
| `<Ctrl-s>` | Abrir en split horizontal |
| `<Ctrl-v>` | Abrir en split vertical |
| `<Ctrl-t>` | Abrir en nueva pestaña |
| `<Ctrl-u>` | Ir al primer elemento |
| `<Ctrl-d>` | Ir al último elemento |
| `<Ctrl-f>` | Página abajo |
| `<Ctrl-b>` | Página arriba |

---

## 📊 RESUMEN POR CATEGORÍAS

- **🧭 Navegación:** 8 atajos
- **🪟 Ventanas:** 8 atajos  
- **🎨 Formateo:** 1 atajo
- **🔧 LSP:** 8 atajos
- **🔍 Picker:** 15 atajos principales
- **🔍 LSP Picker:** 6 atajos
- **🔀 Git:** 8 atajos
- **🛠️ Utilidades:** 8 atajos
- **💻 Terminal:** 4 atajos
- **📝 Text Objects:** 6 atajos
- **🎛️ Picker Internal:** 13 atajos

**🎯 TOTAL: ~85+ atajos de teclado configurados**

---

## 💡 CONSEJOS DE USO

1. **Tecla líder:** Casi todos los comandos complejos empiezan con `<Space>`
2. **Navegación rápida:** Usa `<Ctrl-hjkl>` para moverte entre ventanas
3. **Salida rápida:** `jk` te saca del modo inserción instantáneamente
4. **Buscar todo:** `<leader>f` + letra te da acceso a búsquedas poderosas
5. **LSP completo:** `g` + letra para navegación de código, `<leader>` + letra para acciones
6. **Git integrado:** `<leader>g` + letra para todas las operaciones Git
7. **Terminal rápido:** `<Ctrl-/>` abre/cierra terminal al instante

---

*✨ Configuración actualizada el 26 de junio de 2025*
