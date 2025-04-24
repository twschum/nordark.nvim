local utils = require("nord.utils")
local lsp = {}

local c = require("nord.colors").palette

function lsp.highlights()
  return {

    LspReferenceText = { underline = true, sp = c.snow_storm.darkened }, -- used for highlighting "text" references and vim.illuminate
    -- LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    -- LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticOk = { fg = c.aurora.green }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticError = { fg = c.aurora.red }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.aurora.yellow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.frost.ice }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.frost.artic_water }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError = { bg = utils.darken(c.aurora.red, 0.1), fg = c.aurora.red }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = utils.darken(c.aurora.yellow, 0.1), fg = c.aurora.yellow }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = utils.darken(c.frost.ice, 0.1), fg = c.frost.ice }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = utils.darken(c.frost.artic_water, 0.1), fg = c.frost.artic_water }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError = { undercurl = true, sp = c.aurora.red, underline = false }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.aurora.yellow_dim, underline = false }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.frost.ice, underline = false }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.aurora.purple_dim, underline = false }, -- Used to underline "Hint" diagnostics
    DiagnosticUnderlineOk = { undercurl = true, sp = c.aurora.green_bright, underline = false },
    LspCodeLens = { fg = c.polar_night.brighter },
    LspInlayHint = { fg = c.polar_night.brighter },
    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter = { bg = c.polar_night.brighter, bold = true },
    -- LspTrouble
    TroubleText = { fg = c.snow_storm.origin },
    TroubleCount = { fg = c.frost.ice, bg = c.polar_night.brightest },
    TroubleNormal = { fg = c.snow_storm.origin, bg = c.none },
    TroubleIndent = { fg = c.polar_night.light, bg = c.none },
    TroubleLocation = { fg = c.polar_night.light, bg = c.none },

    -- mason
    MasonHeader = { bg = c.red, fg = c.polar_night.origin },
    MasonHighlight = { fg = c.blue },
    MasonHighlightBlock = { fg = c.polar_night.origin, bg = c.aurora.green },
    MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
    MasonHeaderSecondary = { link = "MasonHighlightBlock" },
    MasonMuted = { fg = c.light_grey },
    MasonMutedBlock = { fg = c.light_grey, bg = c.one_bg },
  }
end

return lsp
