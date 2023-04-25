local c = require("nord.colors").palette

local nordark = {}

nordark.normal = {
    a = { fg = c.polar_night.origin, bg = c.frost.artic_water, bold = true },
    b = { fg = c.grey_fg2, bg = c.polar_night.black2 },
    c = { fg = c.snow_storm.origin, bg = c.statusline_bg },
    x = { fg = c.white, bg = c.statusline_bg },
    -- set to a constant color for working dir
    z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

nordark.insert = {
    a = { fg = c.polar_night.origin, bg = c.dark_purple, bold = true },
    z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

nordark.visual = {
    a = { fg = c.polar_night.origin, bg = c.frost.artic_ocean, bold = true },
    z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

nordark.replace = {
    a = { fg = c.polar_night.origin, bg = c.aurora.orange, bold = true },
    z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

nordark.command = {
    a = { fg = c.polar_night.origin, bg = c.aurora.green, bold = true },
    z = { fg = c.polar_night.origin, bg = c.folder_bg },
}

nordark.inactive = {
    a = { fg = c.white, bg = c.polar_night.black2 },
    b = { fg = c.white, bg = c.polar_night.black2 },
    c = { fg = c.white, bg = c.polar_night.black2 },
}

return nordark
