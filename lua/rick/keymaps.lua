local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

--Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--	 normal mode = "n"
--	 insert mode = "i"
--	 visual mode = "v"
--	 visual-block mode = "x"
--	 term mode = "t"
--	 command mode = "c"

-- Normal
-- Open fiel tree
keymap("n", "<leader>e", ":Lex 20<cr>", opts)

-- Resize with arrows
keymap("n", "<M-Up>", ":resize +2<CR>", opts)
keymap("n", "<M-Down>", ":resize -2<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize -2<CR>", opts)

-- Buffer commands
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>qb", ":bd<CR>", opts)

-- Insert --
-- Goes to insert mode
keymap("i", "<C-c>", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
--
keymap("n", "<C-f>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>db", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>dn", "<cmd>Telescope find_files cwd=~/.config/nvim/<cr>", opts)
keymap("n", "<leader>ds", "<cmd>Telescope find_files cwd=~/.local/share/nvim/site/pack/packer/start/friendly-snippets/snippets<cr>", opts)


-- Greatest remaps

keymap("n", "G", "Gzz", opts)
keymap("n", "Y", "y$", opts)
keymap("v", "<leader>y", '"+ym', opts)
keymap("n", "<leader><", '0f>ldt<', opts)
keymap("n", "<leader><CR>", 'so ~/.config/nvim/init.lua', opts)
vim.cmd "inoremap , ,<c-g>u"
vim.cmd "inoremap . .<c-g>u"
vim.cmd "inoremap ! !<c-g>u"
vim.cmd "inoremap ? ?<c-g>u"
