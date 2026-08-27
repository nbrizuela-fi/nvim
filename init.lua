-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local function set_transparent()
  local groups = {
    "Normal",
    "SignColumn",
    "LineNr",
    "CursorLineNr",
    "EndOfBuffer",
    "VertSplit",
    "StatusLineNC",
    "TabLineFill",
    "Pmenu",
    "SnacksDashboardNormal",
  }
  for _, g in ipairs(groups) do
    vim.api.nvim_set_hl(0, g, { bg = "NONE" })
  end
  -- Arreglar la barra ancha de gitsigns (quitarle el bg sólido)
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00af00", bg = "NONE" })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#87afd7", bg = "NONE" })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#d75f5f", bg = "NONE" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "quiet",
  callback = function()
    vim.schedule(set_transparent)
  end,
})

-- Red de seguridad: forzar de nuevo bien al final, después de que TODO haya cargado
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted", -- evento que LazyVim dispara cuando todo terminó
  callback = function()
    vim.notify("LazyVimStarted disparado, forzando quiet")
    vim.cmd([[colorscheme quiet]])
  end,
})
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd([[colorscheme quiet]])
    vim.defer_fn(set_transparent, 50) -- forzar de nuevo 50ms después, pase lo que pase
  end,
})
