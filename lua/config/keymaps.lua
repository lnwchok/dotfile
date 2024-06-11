local keymap = vim.keymap -- for conciseness

-- keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer

-- Change switch motion
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Nav Left Direction", noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Nav Down Direction", noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Nav Up Direction", noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Nav Right Direction", noremap = true, silent = true })

-- Increment / Decrement Number
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number", noremap = true, silent = true })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number", noremap = true, silent = true })

-- Buffer operation
keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "Next Buffer", noremap = true, silent = true })
keymap.set("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Prev Buffer", noremap = true, silent = true })
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next Buffer", noremap = true, silent = true })
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Prev Buffer", noremap = true, silent = true })
keymap.set("n", "<leader>bD", "<cmd>:bd<CR>", { desc = "Delete Buffer and Window", noremap = true, silent = true })

-- Clear search hilight
keymap.set("n", "<esc>", "<cmd>nohl<CR><esc>", { desc = "Clear Hilight", noremap = true, silent = true })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Better indenting
keymap.set("v", "<", "<gv", { desc = "Left Indent", noremap = true, silent = true })
keymap.set("v", ">", ">gv", { desc = "Right Indent", noremap = true, silent = true })

-- Commenting
keymap.set("n", "<leader>/", "<esc><cmd>normal gcc<cr>", { desc = "Toggle Comment"})
