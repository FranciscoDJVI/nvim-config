-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- HightLight
vim.opt.relativenumber = true
--vim.api.nvim_set_hl(0, "CursorLine", { bg = "black", bold = true }) -- Cambia el fondo a gris y la fuente a negrita
--vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#dddddd", bold = true, undercurl = true, underline = true, blend = 20 }) -- Cambia el color del número de línea a naranja y lo pone en negrita
vim.cmd("highlight LineNr ctermbg=NONE guibg=NONE")

-- Force Telescope transparency
vim.api.nvim_command("highlight TelescopeNormal guibg=NONE") -- Ventana principal de resultados
vim.api.nvim_command("highlight TelescopeBorder guibg=NONE") -- Borde de la ventana (si está activo)
vim.api.nvim_command("highlight TelescopePromptNormal guibg=NONE") -- Fondo de la línea de entrada de texto
vim.api.nvim_command("highlight TelescopePromptBorder guibg=NONE") -- Borde de la línea de entrada
vim.api.nvim_command("highlight TelescopePreviewNormal guibg=NONE") -- Ventana de vista previa (preview)

-- Force transparency for key popup windows
vim.cmd("highlight Pmenu guibg=NONE") -- Fondo del menú emergente (lista de sugerencias)
vim.cmd("highlight PmenuSel guibg=NONE") -- Fondo del elemento seleccionado en el menú

-- Grupos comunes para la documentación/ayuda
vim.cmd("highlight NormalFloat guibg=NONE") -- Fondo de ventanas flotantes generales (ej. LSP hover)
vim.cmd("highlight FloatBorder guibg=NONE") -- Borde de ventanas flotantes
-- Grupos específicos de nvim-cmp (si lo usas para autocompletado)
vim.cmd("highlight CmpItemAbbr guibg=NONE") -- El texto de la sugerencia (lo que aparece en la lista)
vim.cmd("highlight CmpItemSel guibg=NONE") -- El elemento seleccionado
