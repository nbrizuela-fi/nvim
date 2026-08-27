return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      -- Esto le dice a snacks que no se meta con el highlight normal en el dashboard
      -- forzando que use directamente el grupo "Normal" global en vez de uno propio
    },
    styles = {
      dashboard = {
        wo = {
          winhighlight = "Normal:Normal,NormalFloat:Normal",
        },
      },
    },
  },
}
