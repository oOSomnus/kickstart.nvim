vim.keymap.set('n', 'j', 'k', { desc = 'Swap j with k' })
vim.keymap.set('n', 'k', 'j', { desc = 'Swap k with j' })
vim.keymap.set('v', 'j', 'k', { desc = 'Swap j with k (visual)' })
vim.keymap.set('v', 'k', 'j', { desc = 'Swap k with j (visual)' })
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Insert mode move left' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Insert mode move right' })
vim.keymap.set('i', '<C-j>', '<Up>', { desc = 'Insert mode move up' })
vim.keymap.set('i', '<C-k>', '<Down>', { desc = 'Insert mode move down' })
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open file [e]xplorer' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

vim.cmd [[
onoremap j k
onoremap k j
]]

local map = vim.keymap.set

map('n', '<C-_>', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = 'Comment/Uncomment the selected content' })

map('v', '<C-_>', function()
  require('Comment.api').locked 'toggle.linewise'(vim.fn.visualmode())
end, { desc = 'Comment/Uncomment the selected content' })
