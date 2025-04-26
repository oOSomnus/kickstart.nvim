vim.keymap.set('n', 'j', 'k', { desc = 'Swap j with k' })
vim.keymap.set('n', 'k', 'j', { desc = 'Swap k with j' })
vim.keymap.set('v', 'j', 'k', { desc = 'Swap j with k (visual)' })
vim.keymap.set('v', 'k', 'j', { desc = 'Swap k with j (visual)' })
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Insert mode move left' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Insert mode move right' })
vim.keymap.set('i', '<C-j>', '<Up>', { desc = 'Insert mode move up' })
vim.keymap.set('i', '<C-k>', '<Down>', { desc = 'Insert mode move down' })
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open file [e]xplorer' })
local map = vim.keymap.set

-- Normal 模式下 Ctrl + / 注释当前行
map('n', '<C-_>', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = '注释/取消注释当前行' })

-- Visual 模式下 Ctrl + / 注释选中内容
map('v', '<C-_>', function()
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { desc = '注释/取消注释选中内容' })
