return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- init the default configurations
    harpoon.setup {}

    -- basic shortcuts
    vim.keymap.set('n', '<leader>pa', mark.add_file, { desc = 'Harpoon 添加当前文件' })
    vim.keymap.set('n', '<leader>ph', ui.toggle_quick_menu, { desc = 'Harpoon 打开菜单' })
    vim.keymap.set('n', '<leader>pd', mark.rm_file, { desc = 'Harpoon 删除当前文件' })

    -- jumping to 1-4 files shortcut
    vim.keymap.set('n', '<leader>p1', function()
      ui.nav_file(1)
    end, { desc = 'Harpoon 跳转到文件 1' })
    vim.keymap.set('n', '<leader>p2', function()
      ui.nav_file(2)
    end, { desc = 'Harpoon 跳转到文件 2' })
    vim.keymap.set('n', '<leader>p3', function()
      ui.nav_file(3)
    end, { desc = 'Harpoon 跳转到文件 3' })
    vim.keymap.set('n', '<leader>p4', function()
      ui.nav_file(4)
    end, { desc = 'Harpoon 跳转到文件 4' })
  end,
}
