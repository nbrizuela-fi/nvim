return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      italic_comments = true,
      borderless_telescope = false,
    })
    vim.cmd([[colorscheme cyberdream]])
  end,
}

--[[
--
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      transparent = true,
      transparent_mode = true,
      italic_comments = true,
      borderless_telescope = false,
    })
    vim.cmd([[colorscheme gruvbox]]
--)
--end,
--}
--
--]]
