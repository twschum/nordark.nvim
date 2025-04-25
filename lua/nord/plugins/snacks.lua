local snacks = {}

local c = require("nord.colors").palette

function snacks.highlights()
  return {
    -- SnacksNotifierDebug = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierIconDebug = { fg = c.comment },
    -- SnacksNotifierTitleDebug = { fg = c.comment },
    -- SnacksNotifierError = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierIconError = { fg = c.error },
    -- SnacksNotifierTitleError = { fg = c.error },
    -- SnacksNotifierInfo = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierBorderInfo = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierIconInfo = { fg = c.info },
    -- SnacksNotifierTitleInfo = { fg = c.info },
    -- SnacksNotifierTrace = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple, 0.4), bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierIconTrace = { fg = c.purple },
    -- SnacksNotifierTitleTrace = { fg = c.purple },
    -- SnacksNotifierWarn = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierBorderWarn = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    -- SnacksNotifierIconWarn = { fg = c.warning },
    -- SnacksNotifierTitleWarn = { fg = c.warning },
    -- -- Dashboard
    SnacksDashboardDesc = { fg = c.frost.artic_water },
    -- SnacksDashboardFooter = { fg = c.blue1 },
    SnacksDashboardHeader = { fg = c.frost.polar_water },
    SnacksDashboardIcon = { fg = c.frost.ice },
    SnacksDashboardKey = { fg = c.frost.ice, bold = true },
    SnacksDashboardSpecial = { fg = c.aurora.purple },
    --SnacksDashboardDir = { fg = c. },
    -- -- Profiler
    -- SnacksProfilerIconInfo = { bg = Util.blend_bg(c.blue1, 0.3), fg = c.blue1 },
    -- SnacksProfilerBadgeInfo = { bg = Util.blend_bg(c.blue1, 0.1), fg = c.blue1 },
    -- SnacksScratchKey = "SnacksProfilerIconInfo",
    -- SnacksScratchDesc = "SnacksProfilerBadgeInfo",
    -- SnacksProfilerIconTrace = { bg = Util.blend_bg(c.blue7, 0.3), fg = c.dark3 },
    -- SnacksProfilerBadgeTrace = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
    -- Indent
    SnacksIndent = { fg = c.polar_night.brighter, nocombine = true },
    SnacksIndentScope = { fg = c.polar_night.light, nocombine = true },
    SnacksZenIcon = { fg = c.frost.ice },
    SnacksInputIcon = { fg = c.frost.icon },
    -- SnacksInputBorder = { fg = c.yellow },
    -- SnacksInputTitle = { fg = c.yellow },
    -- Picker
    SnacksPickerIcon = { fg = c.frost.ice },
    SnacksPickerPrompt = { fg = c.frost.ice },
    SnacksPickerDir = { fg = c.snow_storm.darkened },
    SnacksPickerGitStatusIgnored = { link = "Comment" },
    SnacksPickerGitStatusUntracked = { link = "Comment" },
    SnacksPickerGitStatusStaged = { fg = c.aurora.green },
    -- link search makes the most sense, but is really chaotic when highlighting fuzzy matches
    -- SnacksPickerMatch = { link = "Search" },
    -- SnacksPickerMatch = { bg = c.highlight_bg },
    SnacksPickerMatch = { link = "Visual" },

    -- SnacksPickerInputBorder = { fg = c.orange, bg = c.bg_float },
    -- SnacksPickerInputTitle = { fg = c.orange, bg = c.bg_float },
    -- SnacksPickerBoxTitle = { fg = c.orange, bg = c.bg_float },
    -- SnacksPickerSelected = { fg = c.magenta2 },
    -- SnacksPickerToggle = "SnacksProfilerBadgeInfo",
    -- SnacksPickerPickWinCurrent = { fg = c.fg, bg = c.magenta2, bold = true },
    -- SnacksPickerPickWin = { fg = c.fg, bg = c.bg_search, bold = true },
  }
end

return snacks
