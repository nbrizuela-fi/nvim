-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local function set_transparent()
  local groups = {
    "Normal",
    "NormalFloat",
    "SignColumn",
    "LineNr",
    "CursorLineNr",
    "EndOfBuffer",
    "VertSplit",
    "StatusLineNC",
    "TabLineFill",
    "Pmenu",
    "SnacksDashboardNormal",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineBufferSelected",
    "BufferLineBufferVisible",
    "BufferLineTab",
    "BufferLineTabSelected",
    "BufferLineIndicatorSelected",
  }
  for _, g in ipairs(groups) do
    vim.api.nvim_set_hl(0, g, { bg = "NONE" })
  end

  -- Arreglar la barra ancha de gitsigns (quitarle el bg sólido)
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00af00", bg = "NONE" })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#87afd7", bg = "NONE" })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#d75f5f", bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineTabSelected", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { bg = "NONE" })

  --if &background == 'dark'
  --let g:terminal_ansi_colors = ["#000000", '#d7005f', '#00af5f', '#d78700', '#0087d7', '#d787d7', '#00afaf', '#dadada', '#707070', '#ff005f', '#00d75f', '#ffaf00', '#5fafff', '#ff87ff', '#00d7d7', '#ffffff']
  --mis colores
  --
  -- Bufferline: Pestaña activa en blanco
  vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = "#ffffff", bg = "NONE", bold = true })

  -- Bufferline: Pestañas inactivas en gris
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = "#707070", bg = "NONE" })
  vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = "#707070", bg = "NONE" })

  vim.api.nvim_set_hl(0, "@constant", {
    underline = true,
  })

  vim.api.nvim_set_hl(0, "@operator", {
    fg = "#ffaf00",
  })

  vim.api.nvim_set_hl(0, "@number", {
    fg = "#ffaf00",
  })

  vim.api.nvim_set_hl(0, "@comment", {
    fg = "#6c7086",
    italic = true,
  })
  -- Color para funciones (LSP tiene mayor prioridad)
  vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = "#ffe19e", bold = false })

  -- Color para funciones (Respaldo de Treesitter por si el LSP falla)
  vim.api.nvim_set_hl(0, "@function", { fg = "#5fafff", bold = true })

  -- Color para variables en C
  vim.api.nvim_set_hl(0, "@variable", { fg = "#dadada" })

  vim.api.nvim_set_hl(0, "@keyword.import", { fg = "#FFC0CB" })

  vim.api.nvim_set_hl(0, "@constant.builtin", { underline = true, sp = "#FFC0CB" })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#f7dadf" })

  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#e06c75" })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#e06c75", underline = true })
  vim.api.nvim_set_hl(0, "SpellBad", { sp = "#e06c75", underline = true })
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd([[colorscheme quiet]])
    vim.defer_fn(set_transparent, 50) -- forzar de nuevo 50ms después, pase lo que pase
  end,
})
