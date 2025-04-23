local mini = {}

local c = require("nord.colors").palette

function mini.highlights()
  return {
    MiniIndentscopeSymbolOff = { fg = c.polar_night.brighter },
    MiniIndentscopeSymbol = { fg = c.polar_night.light },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
