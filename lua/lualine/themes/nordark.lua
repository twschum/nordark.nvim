local c = require("nord.colors").palette

local nordark = {}

nordark.normal = {
    a = { fg = c.polar_night.origin, bg = c.frost.artic_water, bold = true },
    b = { fg = c.grey_fg2, bg = c.polar_night.black2 },
    c = { fg = c.snow_storm.origin, bg = c.statusline_bg },
    x = { fg = c.white, bg = c.statusline_bg },
}

nordark.insert = {
    a = { fg = c.polar_night.origin, bg = c.dark_purple, bold = true },
}

nordark.visual = {
    a = { fg = c.polar_night.origin, bg = c.frost.artic_ocean, bold = true },
}

nordark.replace = {
    a = { fg = c.polar_night.origin, bg = c.aurora.orange, bold = true },
}

nordark.command = {
    a = { fg = c.polar_night.origin, bg = c.aurora.green, bold = true },
}

nordark.inactive = {
    a = { fg = c.white, bg = c.polar_night.black2 },
    b = { fg = c.white, bg = c.polar_night.black2 },
    c = { fg = c.white, bg = c.polar_night.black2 },
}

return nordark
