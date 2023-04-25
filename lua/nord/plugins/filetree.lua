local filetree = {}

local config = require("nord.config")
local utils = require("nord.utils")
local c = require("nord.colors").palette

function filetree.highlights()
  local global_bg = utils.make_global_bg()
  return {
    -- NvimTree
    NvimTreeNormal = { fg = c.snow_storm.origin, bg = c.polar_night.darker },
    NvimTreeWinSeparator = { fg = config.options.borders and c.polar_night.bright or c.none },
    NvimTreeNormalNC = { fg = c.snow_storm.origin },
    NvimTreeRootFolder = { fg = c.folder_bg, bold = true },
    NvimTreeGitDirty = { fg = c.aurora.yellow },
    NvimTreeGitNew = { fg = c.aurora.green },
    NvimTreeGitDeleted = { fg = c.aurora.red },
    NvimTreeGitIgnored = { fg = c.grey_fg },
	NvimTreeGitRenamed = { fg = c.aurora.yellow },
	NvimTreeGitStaged = { fg = c.frost.artic_water },
    NvimTreeSpecialFile = { fg = c.snow_storm.origin },
    NvimTreeIndentMarker = { fg = c.frost.artic_water },
    NvimTreeImageFile = { fg = c.snow_storm.origin },
    NvimTreeSymlink = { fg = c.frost.polar_water },
    NvimTreeFolderIcon = { fg = c.frost.artic_water },
    NvimTreeOpenedFolderName = { fg = c.snow_storm.origin },
    NvimTreeCursorLine = { bg = c.snow_storm.origin },
    NvimTreeWindowPicker = { fg = c.aurora.red, bg = c.black2 },

    -- NeoTree
    NeoTreeDimText = { fg = c.polar_night.brightest },
    NeoTreeDirectoryIcon = { fg = c.frost.artic_water },
    NeoTreeDirectoryName = { fg = c.snow_storm.origin },
    NeoTreeDotfile = { fg = c.polar_night.brightest },
    NeoTreeFadeText1 = { fg = c.polar_night.brightest },
    NeoTreeFadeText2 = { fg = c.polar_night.brighter },
    NeoTreeFileIcon = { fg = c.snow_storm.origin },
    NeoTreeFileName = { fg = c.snow_storm.origin },
    NeoTreeGitUnstaged = { fg = c.aurora.orange, italic = true },
    NeoTreeGitUntracked = { fg = c.aurora.green, italic = true },
    NeoTreeGitConflict = { fg = c.aurora.red },
    NeoTreeIndentMarker = { fg = c.polar_night.brighter },
    NeoTreeMessage = { fg = c.polar_night.brightest, italic = true },
    NeoTreeModified = { fg = c.aurora.yellow },
    NeoTreeRootName = { fg = c.snow_storm.origin, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = c.frost.artic_water },
    NeoTreeTabActive = { fg = c.snow_storm.origin, bg = c.polar_night.brighter, bold = true },
    NeoTreeTabInactive = { fg = c.polar_night.light, bg = global_bg },
    NeoTreeTabSeparatorActive = { fg = c.polar_night.brighter, bg = global_bg },
    NeoTreeTabSeparatorInactive = { fg = c.polar_night.origin, bg = global_bg },
  }
end

return filetree
