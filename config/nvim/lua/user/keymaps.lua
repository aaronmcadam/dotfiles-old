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
keymap("n", "-", "<cmd>NvimTreeFindFileToggle<CR>", opts)

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Related buffer navigation
keymap("n", "<Leader>kk", "<cmd>Other<CR>", opts)
keymap("n", "<Leader>kv", "<cmd>OtherVSplit<CR>", opts)
keymap("n", "<Leader>kc", "<cmd>OtherClear<CR>", opts)
keymap("n", "<Leader>kt", "<cmd>OtherVSplit test<CR>", opts)
keymap("n", "<Leader>ks", "<cmd>OtherVSplit story<CR>", opts)
keymap("n", "<Leader>ki", "<cmd>OtherVSplit implementation<CR>", opts)

keymap("n", "<Leader>q", "<cmd>Bdelete<CR>", opts)
keymap("n", "<Leader>r", '<cmd>lua require("user.utils").reload_config()<CR>', opts)
keymap("n", "<Leader>tt", '<cmd>lua require("neotest").run.run()<CR>', opts)
keymap("n", "<Leader>td", '<cmd>lua require("neotest").run.run({ strategy = "dap" })<CR>', opts)
keymap("n", "<Leader>tf", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', opts)
keymap("n", "<Leader>tl", '<cmd>lua require("neotest").run.run_last()<CR>', opts)
keymap("n", "<Leader>ts", '<cmd>lua require("neotest").summary.toggle()<CR>', opts)
keymap("n", "<Leader>tr", '<cmd>lua require("neotest").output.open({ enter = true })<CR>', opts)

-- Debugging tests:
-- keymap("n", "<Leader>ta", '<cmd>lua require("neotest").run.attach()<CR>', opts)
-- keymap('n', '<Leader>td', '<cmd>lua require("neotest").run.run({ strategy = "dap" })<CR>', opts)
-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

