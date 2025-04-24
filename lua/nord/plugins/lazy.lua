local lazy = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function lazy.highlights()
  return {
    -- lazy.nvim
    LazyH1 = {
      bg = c.aurora.green,
      fg = c.polar_night.origin,
    },

    LazyButton = {
      bg = c.polar_night.bright,
      fg = c.aurora.purple,
    },

    LazyH2 = {
      fg = c.aurora.red,
      bold = true,
      underline = true,
    },

    LazyReasonPlugin = { fg = c.aurora.red },
    LazyValue = { fg = c.teal },
    LazyDir = { fg = c.snow_storm.brighter },
    LazyUrl = { fg = c.snow_storm.brighter },
    LazyCommit = { fg = c.aurora.green },
    LazyNoCond = { fg = c.aurora.red },
    LazySpecial = { fg = c.blue },
    LazyReasonFt = { fg = c.aurora.purple },
    LazyOperator = { fg = c.white },
    LazyReasonKeys = { fg = c.teal },
    LazyTaskOutput = { fg = c.white },
    LazyCommitIssue = { fg = c.aurora.red_dim },
    LazyReasonEvent = { fg = c.aurora.yellow },
    LazyReasonStart = { fg = c.white },
    LazyReasonRuntime = { fg = c.frost.arctic_water },
    LazyReasonCmd = { fg = c.aurora.yellow_dim },
    LazyReasonSource = { fg = c.frost.polar_water },
    LazyReasonImport = { fg = c.white },
    LazyProgressDone = { fg = c.aurora.green },
  }
end

return lazy
