-- File: ~/.config/nvim/lua/custom/plugins/noice.lua
return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    opts = {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true, -- 搜索栏移到底部
        command_palette = true, -- 提升 : 命令 UX
        long_message_to_split = true, -- 长消息自动分屏
        inc_rename = false,
        lsp_doc_border = true, -- LSP 漂亮边框
      },
    },
  },
}
