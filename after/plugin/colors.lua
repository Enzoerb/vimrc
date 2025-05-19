function ColorMyPencils(color) -- Inspired on The Primeagen
  color = color or "catppuccin"

  -- Setup TokyoNight
  require('tokyonight').setup {
    style = 'night', -- Use the night variant
    transparent = false, -- We'll handle transparency manually
    on_highlights = function(highlights, colors)
      highlights.Normal = { bg = "#000000" }
      highlights.NormalFloat = { bg = "#000000" }
      highlights.LineNr = { fg = colors.blue, bg = "#000000" }
      highlights.FoldColumn = { fg = colors.blue, bg = "#000000" }
      highlights.SignColumn = { fg = colors.blue, bg = "#000000" }
    end,
  }

  vim.cmd.colorscheme(color)
end

ColorMyPencils()
