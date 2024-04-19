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
  }
end

return picker
