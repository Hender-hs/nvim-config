-- Open Explorer
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", vim.cmd.Vexplore)

-- Navegate tabs commands
vim.keymap.set("n", "<leader>t", vim.cmd.tabedit)
vim.keymap.set("n", "mf", vim.cmd.tabnext)
vim.keymap.set("n", "md", vim.cmd.tabprevious)

-- Nvim commands
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>cc", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>nf", vim.cmd.NvimTreeGenerateOnAttach)
vim.keymap.set("n", "<leader>mm", vim.cmd.Mason)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "<leader>f", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
