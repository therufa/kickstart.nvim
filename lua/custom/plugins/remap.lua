-- Key remaps

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join current with next line" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move page [D]own" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move page [U]p" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Ignore annoying stuff
vim.keymap.set("n", "Q", "<nop>")

-- terminal remaps
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>') -- enter normal mode in terminal

-- telescope remaps
vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = "Find Files" })

-- fugitive
vim.keymap.set('n', '<leader>Gs', vim.cmd.Git, { desc = "[G]it [S]tatus" })
vim.keymap.set('n', '<leader>Gp', vim.cmd.Git, { desc = "[G]it [P]ush" })

-- convenience
vim.keymap.set('n', '<leader>px', function ()
	vim.cmd('Ex')
end, { desc = "E[x]plore" })

return {}

