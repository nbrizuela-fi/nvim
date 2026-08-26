return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*",
    }, {
      RGB = true,
      RRGGBB = true,
      names = false,
      mode = "background",
    })
  end,
}
