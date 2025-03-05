return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Nvim Tree',
            text_align = 'left',
            separator = true,
          },
        },
      },
    }

    vim.keymap.set('n', 'H', '<cmd>BufferLineCyclePrev<CR>')
    vim.keymap.set('n', 'L', '<cmd>BufferLineCycleNext<CR>')

    vim.keymap.set('n', '<M-h>', '<cmd>BufferLineMovePrev<CR>')
    vim.keymap.set('n', '<M-l>', '<cmd>BufferLineMoveNext<CR>')

    vim.keymap.set('n', '<leader>q', '<cmd>BufferLineCyclePrev<CR><cmd>BufferLineCloseRight<CR>')
  end,
}
