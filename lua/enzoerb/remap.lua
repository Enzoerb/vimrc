vim.g.mapleader = " "

-- Explore
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Comment Lines
vim.keymap.set('n', '<leader>cl', ':Commentary<CR>')

-- Easy navigation
-- vim.keymap.set('n', '<A-Left>', 'b', { desc = 'Move to previous word' })
-- vim.keymap.set('n', '<A-Right>', 'w', { desc = 'Move to next word' })
-- vim.keymap.set('n', '<A-Backspace>', 'db', { desc = 'Delete previous word' })
-- vim.keymap.set('i', '<A-Backspace>', '<C-w>', { desc = 'Delete previous word in insert mode' })

-- Proper Navigation
vim.keymap.set({'n', 'i', 'v'}, '<Left>', '<nop>', { desc = 'No left arrow for me' })
vim.keymap.set({'n', 'i', 'v'}, '<Right>', '<nop>', { desc = 'No right arrow for me' })
vim.keymap.set({'n', 'i', 'v'}, '<Up>', '<nop>', { desc = 'No up arrow for me' })
vim.keymap.set({'n', 'i', 'v'}, '<Down>', '<nop>', { desc = 'No down arrow for me' })

-- Move Highlight
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Page Movement
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- replace master
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>q", [[:norm<Space>@]])

-- Hyperlink Paste
vim.keymap.set("n", "<leader>pl", [[ciw[<C-r>"](<C-r>+)<Esc>]])
vim.keymap.set("v", "<leader>pl", [[c[<C-r>"](<C-r>+)<Esc>]])

-- search vimwiki tags
vim.keymap.set("n", "<leader>rww", [[:Rg :: ~/vimwiki/<C-Left><Left><Left>]])
vim.keymap.set("n", "<leader>rwi", [[:Rg :: ~/vimwiki/diary/<C-Left><Left><Left>]])

-- vimwiki utilities
vim.keymap.set('n', '<leader>wt', ':VimwikiTable<CR>')

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
