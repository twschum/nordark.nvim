local colors = {}

local defaults = {
  polar_night = {
    darker    = "#20242D", -- darker_black 1% darker than the origin
    origin    = "#232730", -- "#2E3440" -- nord0, black
    black2    = "#2a303c", -- b46 black2
    bright    = "#2E3440", -- "#3B4252" -- nord1, one_bg
    brighter  = "#3B4252", -- "#434C5E" -- nord2, one_bg2
    brightest = "#434C5E", -- "#4C566A" -- nord3, one_bg3, menu borders
    light     = "#4C566A", -- "#616E88" -- out of palette
  },
  snow_storm = {
    origin    = "#D8DEE9", -- nord4 -- normal
    brighter  = "#E5E9F0", -- nord5
    brightest = "#ECEFF4", -- nord6
  },
  frost = {
    polar_water = "#8FBCBB", -- nord7
    ice         = "#88C0D0", -- nord8
    artic_water = "#81A1C1", -- nord9, nord_blue
    artic_ocean = "#5E81AC", -- nord10
  },
  aurora = {
    red    = "#BF616A", -- nord11
    orange = "#D08770", -- nord12
    yellow = "#EBCB8B", -- nord13
    green  = "#A3BE8C", -- nord14
    purple = "#B48EAD", -- nord15
  },
  none = "NONE",
    -- extended base46 colors
    baby_pink     = "#de878f", -- lighter than aurora.red
    pink          = "#d57780", -- darker than aurora.red
    sun           = "#e1c181", -- darker than aurora.yellow
    vibrant_green = "#afca98", -- lighter than aurora.green
    blue          = "#7797b7", -- darker than frost.arctic_ocean
    teal          = "#6484a4",
    cyan          = "#9aafe6", -- brighter than frost
    dark_purple   = "#a983a2", -- darker than aurora.purble
    white         = "#abb2bf",
    grey          = "#4b515d",
    grey_fg       = "#565c68", -- comment
    grey_fg2      = "#606672",
    light_grey    = "#646a76",
    line          = "#414753", -- for lines  like vertsplit
    statusline_bg = "#333945",
    lightbg       = "#3f4551",
    folder_bg     = "#7797B7",
    -- experimental background highlights for diff
    rbg1          = "#302327",
    gbg1          = "#273023",
}

colors.palette = defaults
colors.default_bg = "#242730" -- nord0

-- function colors.daltonize(severity)
--   local daltonize = require("nord.utils.colorblind").daltonize
--
--   for group, color in pairs(defaults) do
--     if type(color) == "table" then
--       for sub_group, sub_color in pairs(color) do
--         colors.palette[group][sub_group] = daltonize(sub_color, severity)
--       end
--     end
--   end
-- end

return colors
