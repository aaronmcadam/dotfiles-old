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
keymap("n", "<Leader>ff", "<cmd>lua require('user.telescope').project_files()<CR>", opts)
-- File viewer
keymap("n", "<Leader>fv", "<cmd>Telescope file_browser<CR>", opts)
-- Find text
keymap("n", "<Leader>ft", "<cmd>Telescope live_grep<CR>", opts)
-- Find word
keymap("n", "<Leader>fw", "<cmd>Telescope grep_string<CR>", opts)
-- Find buffer
keymap("n", "<Leader>fb", "<cmd>Telescope buffers<CR>", opts)

-- Leader mappings
keymap("n", "<Leader>e", "<cmd>NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<Leader>q", "<cmd>Bdelete<CR>", opts)
keymap("n", "<Leader>r", '<cmd>lua require("user.utils").reload_config()<CR>', opts)
keymap("n", "<Leader>tt", '<cmd>lua require("neotest").run.run()<CR>', opts)
keymap("n", "<Leader>tf", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', opts)
keymap("n", "<Leader>tl", '<cmd>lua require("neotest").run.run_last()<CR>', opts)
keymap("n", "<Leader>ts", '<cmd>lua require("neotest").summary.toggle()<CR>', opts)
keymap("n", "<Leader>tr", '<cmd>lua require("neotest").output.open({ enter = true })<CR>', opts)
-- Debugging tests:
-- keymap("n", "<Leader>ta", '<cmd>lua require("neotest").run.attach()<CR>', opts)
-- keymap('n', '<Leader>td', '<cmd>lua require("neotest").run.run({ strategy = "dap" })<CR>', opts)
