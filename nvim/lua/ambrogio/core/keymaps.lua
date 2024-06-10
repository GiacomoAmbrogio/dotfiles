vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }


keymap.set("i", "jk", "<ESC>", { desc = 'Exit insert mode with jk' })

-- explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

-- split/newtab
keymap.set("n", "sh", ":split<Return>", opts, { desc = "Split horizontal (below)" })
keymap.set("n", "sv", ":vsplit<Return>", opts, { desc = "Split vertical (right)" })

-- move selected lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

