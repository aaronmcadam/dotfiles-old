local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode --
-- Avoid invalid commands by avoiding the shift key for commands
keymap("n", ";", ":", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Telescope
-- Find file
keymap("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
-- Find text
keymap("n", "<Leader>ft", ":Telescope live_grep<CR>", opts)
-- Find word
keymap("n", "<Leader>fw", ":Telescope grep_string<CR>", opts)
-- Find buffer
keymap("n", "<Leader>fb", ":Telescope buffers<CR>", opts)

-- Leader mappings
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<Leader>q", ":Bdelete<CR>", opts)
