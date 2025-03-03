return {
  'rmagatti/auto-session',
  lazy = false,

  keys = {
    { '<leader>ss', '<cmd>SessionSearch<CR>', desc = '[S]ession [S]earch' },
  },

  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Downloads', '/' },
  },
}
