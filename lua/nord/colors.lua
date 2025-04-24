local colors = {}

-- To view loaded highlight groups
-- :e runtime syntax/hitest.vim

local defaults = {
  polar_night = {
    darker = "#20242D", -- darker_black 1% darker than the origin
    origin = "#232730", -- "#2E3440" -- nord0, black
    black2 = "#2a303c", -- b46 black2, 2% lighter than origin
    bright = "#2E3440", -- "#3B4252" -- nord1, one_bg
    brighter = "#3B4252", -- "#434C5E" -- nord2, one_bg2
    brightest = "#434C5E", -- "#4C566A" -- nord3, one_bg3, menu borders
    light = "#4C566A", -- "#616E88" -- out of palette
  },
  snow_storm = {
    darkened = "#9DA6B9", -- halfway to #616E88 from #D8DEE9
    muted = "#BBC2D1",
    origin = "#D8DEE9", -- nord4 -- normal / default text
    brighter = "#E5E9F0", -- nord5 - active state over origin
    brightest = "#ECEFF4", -- nord6 - reserved and structuring syntax characters {[]}
  },
  frost = {
    polar_water = "#8FBCBB", -- nord7 - classes, types, primatives
    artic_water = "#81A1C1", -- nord9, nord_blue, secondary ui elements; syntactic and reserved keywords; support chars, operators, tags, units, punctuations
    ice = "#88C0D0", -- nord8 - primary accent color - delcarations, calls, executions statements
    artic_ocean = "#5E81AC", -- nord10, tertiary ui elements; pragmas, comment keywords, perprocessor
  },
  aurora = {
    red = "#BF616A", -- nord11
    red_bright = "#C5727A",
    red_dim = "#B74E58",
    orange = "#D08770", -- nord12
    orange_bright = "#D79784",
    orange_dim = "#CB775D",
    yellow = "#EBCB8B", -- nord13
    yellow_bright = "#EFD49F",
    yellow_dim = "#E7C173",
    green = "#A3BE8C", -- nord14
    green_bright = "#B1C89D",
    green_dim = "#97B67C",
    purple = "#B48EAD", -- nord15
    purple_bright = "#BE9DB8",
    purple_dim = "#A97EA1",
  },
  backlight = {
    --     red = utils.darken(defaults.aurora.red, 0.1)
    --     green = utils.darken(defaults.aurora.green, 0.1)
    --     yellow = utils.darken(defaults.aurora.yellow, 0.1)
    -- xxx1 10% color works paird with the foreground color
    -- xxx2 20% color works under other colors
    -- xxx3 30% color works as emphasis, such as diff word
    red1 = "#332d36",
    red2 = "#42333c",
    red3 = "#523841",
    yellow1 = "#373739",
    yellow2 = "#4b4842",
    yellow3 = "#5f584b",
    green1 = "#303639",
    green2 = "#3d4542",
    green3 = "#49544c",
  },
  none = "NONE",
  -- cyan_base = "#8FBCBB", -- polar_water
  --cyan_bright = "#9FC6C5",
  --cyan_dim = "#80B3B2",
  -- extended base46 colors
  --baby_pink       = "#de878f", -- lighter than aurora.red
  --pink            = "#d57780", -- darker than aurora.red
  --sun             = "#e1c181", -- darker than aurora.yellow
  --vibrant_green   = "#afca98", -- lighter than aurora.green
  blue = "#7797b7", -- darker than frost.arctic_ocean
  teal = "#6484a4",
  --cyan            = "#9aafe6", -- brighter than frost
  --dark_purple     = "#a983a2", -- darker than aurora.purple

  white = "#abb2bf",
  grey = "#4b515d",
  grey_fg = "#565c68", -- comment
  comment_special = "#616E88", -- for links in comments
  grey_fg2 = "#606672",
  highlight_bg = "#60728A", -- exclusive for search backgrounds?
  light_grey = "#646a76",
  line = "#414753", -- for lines  like vertsplit
  statusline_bg = "#333945",
  lightbg = "#3f4551",
  folder_bg = "#7797B7",
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
