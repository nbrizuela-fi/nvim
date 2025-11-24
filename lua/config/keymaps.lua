local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--para copiar y pegar fuera de nvim
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set(
  "n",
  "<leader>jj",
  "<cmd>lua require('pdfview.renderer').next_page()<CR>",
  { desc = "PDFview: Next Page" }
)

vim.keymap.set(
  "n",
  "<leader>kk",
  "<cmd>lua require('pdfview.renderer').previous_page()<CR>",
  { desc = "PDFview: Previous page" }
)

vim.keymap.set("n", "<leader>pp", function()
  local pdf_path = vim.api.nvim_buf_get_name(0)
  if pdf_path == "" then
    print("No hay PDF abierto")
    return
  end
  require("pdfview").open(pdf_path)
end, { desc = "Open current PDF via pdfview" })
