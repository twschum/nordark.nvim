local cmp = {}

local c = require("nord.colors").palette

function cmp.highlights()
  return {
    CmpItemAbbrDeprecated = { fg = c.polar_night.light },
    CmpItemAbbrMatch = { fg = c.frost.ice, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.frost.ice, bold = true },
    CmpItemMenu = { fg = c.light_grey, italic = true },
    CmpBorder = { fg = c.polar_night.brightest, bg = c.polar_night.darker },
    CmpDoc = { bg = c.polar_night.darker },
    CmpDocBorder = { fg = c.polar_night.brightest, bg = c.polar_night.darker },
    CmpPmenu = { bg = c.polar_night.darker },
    CmpSel = { link = "PmenuSel", bold = true },

          -- cmp item kinds
  CmpItemKind = { fg = c.frost.artic_water },
  CmpItemKindConstant = { fg = c.frost.artic_water },
  CmpItemKindFunction = { fg = c.frost.artic_water },
  CmpItemKindIdentifier = { fg = c.frost.ice },
  CmpItemKindField = { fg = c.frost.ice },
  CmpItemKindVariable = { fg = c.frost.artic_water },
  CmpItemKindSnippet = { fg = c.aurora.red },
  CmpItemKindText = { fg = c.aurora.green },

  CmpItemKindStructure = { fg = c.frost.artic_water },
  CmpItemKindType = { fg = c.frost.ice },
  CmpItemKindKeyword = { fg = c.frost.polar_water },
  CmpItemKindMethod = { fg = c.frost.artic_water },
  CmpItemKindConstructor = { fg = c.blue },
  CmpItemKindFolder = { fg = c.frost.polar_water },
  CmpItemKindModule = { fg = c.frost.ice },
  CmpItemKindProperty = { fg = c.frost.ice },
  CmpItemKindEnum = { fg = c.blue },
  CmpItemKindUnit = { fg = c.frost.artic_water },
  CmpItemKindClass = { fg = c.teal },
  CmpItemKindFile = { fg = c.frost.polar_water },
  CmpItemKindInterface = { fg = c.aurora.green },
  CmpItemKindColor = { fg = c.white },
  CmpItemKindReference = { fg = c.snow_storm.brighter },
  CmpItemKindEnumMember = { fg = c.aurora.purple },
  CmpItemKindStruct = { fg = c.frost.artic_water },
  CmpItemKindValue = { fg = c.cyan },
  CmpItemKindEvent = { fg = c.aurora.yellow },
  CmpItemKindOperator = { fg = c.snow_storm.brighter },
  CmpItemKindTypeParameter = { fg = c.frost.ice },
  CmpItemKindCopilot = { fg = c.aurora.green },
  }
end

return cmp
