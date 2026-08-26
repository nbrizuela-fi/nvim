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

vim.keymap.set("n", "<leader>z", function()
  require("snacks").toggle.zen()
end, { desc = "Toggle Zen Mode" })

local numbers_visible = true
local saved_statuscolumn = vim.o.statuscolumn
local saved_signcolumn = vim.o.signcolumn
local saved_foldcolumn = vim.o.foldcolumn

local function toggle_numbers()
  if numbers_visible then
    saved_statuscolumn = vim.o.statuscolumn
    saved_signcolumn = vim.o.signcolumn
    saved_foldcolumn = vim.o.foldcolumn

    vim.o.number = false
    vim.o.relativenumber = false
    vim.o.statuscolumn = ""
    vim.o.signcolumn = "no"
    vim.o.foldcolumn = "0"
  else
    vim.o.number = true
    vim.o.relativenumber = true
    vim.o.statuscolumn = saved_statuscolumn
    vim.o.signcolumn = saved_signcolumn
    vim.o.foldcolumn = saved_foldcolumn
  end
  numbers_visible = not numbers_visible
end

vim.keymap.set("n", "<leader>tn", toggle_numbers, { desc = "Toggle line numbers and gutter" })
