local c = require("nord.colors").palette

local M = {}

M.normal = {
  a = { fg = c.polar_night.origin, bg = c.frost.artic_water, bold = true },
  b = { fg = c.grey_fg2, bg = c.polar_night.black2 },
  c = { fg = c.snow_storm.origin, bg = c.statusline_bg },

  x = { fg = c.white, bg = c.statusline_bg },
  y = { fg = c.grey_fg2, bg = c.polar_night.black2 },
  z = { fg = c.polar_night.origin, bg = c.frost.artic_water },

  -- set to a constant color for working dir
  --z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

M.insert = {
  a = { fg = c.polar_night.origin, bg = c.aurora.purple_dim, bold = true },
  --b = { fg = c.aurora.purple_dim, bg = c.polar_night.black2 },
  --
  --z = { fg = c.polar_night.origin, bg = c.aurora.purple_dim },
  z = { fg = c.polar_night.origin, bg = c.aurora.purple_dim },
}

M.visual = {
  a = { fg = c.polar_night.origin, bg = c.frost.polar_water, bold = true },
  z = { fg = c.polar_night.origin, bg = c.frost.polar_water },
}

M.replace = {
  a = { fg = c.polar_night.origin, bg = c.aurora.orange, bold = true },
  z = { fg = c.polar_night.origin, bg = c.aurora.orange },
}

M.command = {
  a = { fg = c.polar_night.origin, bg = c.frost.ice, bold = true },
  z = { fg = c.polar_night.origin, bg = c.frost.ice },
}

M.terminal = {
  a = { fg = c.polar_night.origin, bg = c.aurora.yellow },
  z = { fg = c.polar_night.origin, bg = c.aurora.yellow },
}

M.inactive = {
  a = { fg = c.white, bg = c.polar_night.black2 },
  b = { fg = c.white, bg = c.polar_night.black2 },
  c = { fg = c.white, bg = c.polar_night.black2 },
}

return M
