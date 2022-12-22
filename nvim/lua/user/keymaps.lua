-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true } 

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes 
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-- ################################### Normal Mode ####################################

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- Bufferline Navigate 
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-j>", ":BufferLineCyclePrev<CR>", opts)

-- Close buffers
keymap("n", "<S-x>", "<cmd>Bdelete<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Comments
local commentapi = require("Comment.api")
local esc = vim.api.nvim_replace_termcodes(
        '<ESC>', true, false, true
)
keymap("n", "<leader>/", commentapi.toggle.linewise.current) 
keymap("v", "<leader>/", function()
        vim.api.nvim_feedkeys(esc, "nx", false)
        commentapi.toggle.linewise(vim.fn.visualmode())
end)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>d", ":NvimTreeFocus<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

