local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '
 
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)

map('n', '<S-Tab>', '<<', opts)
map('i', '<S-Tab>', '<C-d>', opts)

map('n', '<C-Left>', '<C-W>h', opts)
map('n', '<C-Down>', '<C-W>j', opts)
map('n', '<C-Up>', '<C-W>k', opts)
map('n', '<C-Right>', '<C-W>l', opts)
map('n', '<leader>h', ':split<CR>', opts)
map('n', '<leader>v', ':vsplit<CR>', opts)
-- Resize splits
map('n', '<C-S-Right>', ':vertical resize +4<CR>', opts)
map('n', '<C-S-Left>', ':vertical resize -4<CR>', opts)
map('n', '<C-S-Up>', ':resize +4<CR>', opts)
map('n', '<C-S-Down>', ':resize -4<CR>', opts)

map('n', '<leader>t', ':TodoQuickFix<CR>', opts)

map('n', '<C-s>', ':w<CR>', opts)

map('n', '<leader>q', ':q!<CR>', opts)

-- Tab keybinds --
map('n', '<A-Up>', ':move-2<CR>', opts)
map('n', '<A-Down>', ':move+1<CR>', opts)

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', ':BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseAllButPinned<CR>
--                 :BufferCloseAllButCurrentOrPinned<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Telescope --
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
