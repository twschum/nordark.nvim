local c = require("nord.colors").palette
local utils = require("nord.utils")

local nordark = {}

nordark.normal = {
  a = { fg = c.polar_night.bright, bg = c.frost.ice },
  b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
  c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
}

nordark.insert = {
  a = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
}

nordark.visual = {
  a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
}

nordark.replace = {
  a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
}

nordark.command = {
  a = { fg = c.polar_night.bright, bg = c.aurora.purple },
}

nordark.inactive = {
  a = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
  b = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
  c = { fg = c.snow_storm.origin, bg = c.polar_night.bright },
}

return nordark
