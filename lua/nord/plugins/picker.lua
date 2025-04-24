local picker = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function picker.highlights()
  return {
    TelescopeBorder = { fg = c.polar_night.light, bg = utils.make_global_bg(true) },
    TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
    TelescopePromptCounter = { fg = c.polar_night.light },
    TelescopeMatching = { fg = c.frost.ice, bold = true },
    TelescopePromptPrefix = { fg = c.aurora.red },

    TelescopeResultsDiffAdd = { bg = c.backlight.green2 },
    TelescopeResultsDiffChange = { bg = c.backlight.yellow2 },
    TelescopeResultsDiffDelete = { bg = c.backlight.red2 },

    -- FzfLua --
    -- Defaults to Comment
    FzfLuaDirPart = { fg = c.snow_storm.darkened },
    FzfLuaSearch = { fg = c.none, bg = c.highlight_bg },
    FzfLuaLiveSym = { fg = c.none, bg = c.highlight_bg },
    FzfLuaFzMatch = { underline = true, sp = c.aurora.purple },
  }
end

return picker
