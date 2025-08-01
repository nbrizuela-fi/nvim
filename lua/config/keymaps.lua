local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--para copiar y pegar fuera de nvim
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
