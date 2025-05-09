local git = {}

local c = require("nord.colors").palette

function git.highlights()
  return {
    -- airblade/vim-gitgutter
    GitGutterAdd = { fg = c.aurora.green },
    GitGutterChange = { fg = c.aurora.yellow },
    GitGutterDelete = { fg = c.aurora.red },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = c.aurora.green },
    GitSignsAddNr = { fg = c.aurora.green },
    GitSignsAddLn = { fg = c.aurora.green },
    GitSignsChange = { fg = c.aurora.yellow },
    GitSignsChangeNr = { fg = c.aurora.yellow },
    GitSignsChangeLn = { fg = c.aurora.yellow },
    GitSignsChangedelete = { fg = c.aurora.orange },
    GitSignsChangedeleteNr = { fg = c.aurora.orange },
    GitSignsTopdelete = { fg = c.aurora.red },
    GitSignsTopdeleteNr = { fg = c.aurora.red },
    GitSignsDelete = { fg = c.aurora.red },
    GitSignsDeleteNr = { fg = c.aurora.red },
    GitSignsDeleteLn = { fg = c.aurora.red },
    GitSignsCurrentLineBlame = { fg = c.polar_night.brightest, bold = false },
    GitSignsUntracked = { fg = c.aurora.green },
    GitSignsUntrackedNr = { fg = c.aurora.green },
    GitSignsUntrackedLn = { fg = c.aurora.green },

    GitSignsAddInline = { fg = c.aurora.green, bg = c.backlight.green2 },
    GitSignsChangeInline = { fg = c.aurora.yellow, bg = c.backlight.yellow2 },
    GitSignsDeleteInline = { fg = c.aurora.red, bg = c.backlight.red2 },

    -- TODO diffview
  }
end

return git
