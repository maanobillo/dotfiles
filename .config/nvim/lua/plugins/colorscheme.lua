return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      -- highlight overrides only for new-york wallpaper: (remove whole highlight overrides block if not using it)
      highlight_overrides = {
        mocha = function(colors)
          return {
            LineNr = { fg = colors.overlay1 },
            Visual = { bg = colors.overlay1 },
          }
        end,
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
