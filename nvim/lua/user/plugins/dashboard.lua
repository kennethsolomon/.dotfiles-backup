local db = require('dashboard')

-- Hyper Setup
db.setup({
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        -- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'New file',
          group = 'Label',
          action = 'enew',
          key = 'n',
        },
        {
          icon = ' ',
          desc = 'Find Word',
          group = 'Label',
          action = 'Telescope live_grep',
          key = 'SPC g',
        },
        -- {
        --   desc = ' dotfiles',
        --   group = 'Number',
        --   action = 'Telescope dotfiles',
        --   key = 'd',
        -- },
      },
    },
  })

-- Doom Setup
-- db.setup({
--     theme = 'doom',
--     config = {
--       header = {
--         '',
--         '',
--         '  ⢸⣦⡈⠻⣿⣿⣿⣶⣄',
--         '    ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄',
--         '⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿ ⠈⠻⣿⣿⣿⣷⣄',
--         '  ⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄',
--         '',
--       },
--       center = {
--         { icon = '  ', desc = 'New file                       ', action = 'enew' },
--         { icon = '  ', shortcut = 'SPC f', desc = 'Find file                 ', action = 'Telescope find_files' },
--         { icon = '  ', shortcut = 'SPC h', desc = 'Recent files              ', action = 'Telescope oldfiles' },
--         { icon = '  ', shortcut = 'SPC g', desc = 'Find Word                 ', action = 'Telescope live_grep' },
--       },
--       footer = { '' }
--     }
--   })

vim.cmd([[
  augroup DashboardHighlights
    autocmd ColorScheme * highlight DashboardHeader guifg=#6272a4
    autocmd ColorScheme * highlight DashboardCenter guifg=#f8f8f2
    autocmd ColorScheme * highlight DashboardShortcut guifg=#bd93f9
    autocmd ColorScheme * highlight DashboardFooter guifg=#6272a4
  augroup end
]])
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
