local c = require("nord.colors").palette
local utils = require("nord.utils")

local defaluts = {}

function defaluts.highlights()
  local options = require("nord.config").options
  local global_bg = utils.make_global_bg()
  local transparent_bg = utils.make_global_bg(true)
  -- TODO to handle borders option, set value of c.line

  return {
    ColorColumn = { bg = c.polar_night.black2 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- the character under the cursor
    CursorIM = { fg = c.snow_storm.brighter, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
    CursorColumn = { bg = c.polar_night.bright, sp = c.none }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.polar_night.origin }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.frost.ice }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = c.polar_night.bright }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    Error = { fg = c.aurora.red, bg = c.polar_night.origin },
    ErrorMsg = { fg = c.aurora.red, bg = c.backlight.red1 }, -- error messages on the command line
    VertSplit = { fg = c.line, bg = global_bg }, -- the column separating vertically split windows
    WinSeparator = { fg = c.line, bg = global_bg }, -- Separators between window splits.
    Folded = { fg = c.snow_storm.brightest, bg = c.polar_night.bright }, -- line used for closed folds
    FoldColumn = { fg = c.polar_night.brightest, bg = global_bg }, -- 'foldcolumn'
    SignColumn = { fg = c.polar_night.bright, bg = transparent_bg }, -- column where |signs| are displayed
    -- Substitute = { link = "Search" }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.grey, bg = c.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { bg = c.polar_night.brightest, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.snow_storm.origin }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = {}, -- Area for messages and cmdline
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.frost.ice }, -- |more-prompt|
    NonText = { fg = c.polar_night.brighter }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.snow_storm.origin, bg = transparent_bg }, -- normal text
    NormalFloat = { fg = c.snow_storm.origin, bg = global_bg }, -- Normal text in floating windows.
    FloatBorder = { fg = c.polar_night.brightest, bg = global_bg }, -- Borders of floating windows
    Pmenu = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- Popup menu: normal item.
    PmenuSel = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.snow_storm.origin }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.frost.ice, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = c.snow_storm.brightest, bg = c.frost.ice }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = c.polar_night.brightest }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.frost.ice, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.frost.artic_water, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.frost.actic_water, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.frost.actic_water, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- status line of current window
    StatusLineNC = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.snow_storm.origin, bg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- tab pages line, active tab page label
    Title = { fg = c.snow_storm.origin, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { fg = c.none, bg = c.polar_night.brighter }, -- Visual mode selection
    WarningMsg = { fg = c.aurora.yellow, bg = c.backlight.yellow1 }, -- warning messages
    Whitespace = { fg = c.polar_night.brighter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = c.frost.ice, bg = c.polar_night.bright }, -- current match in 'wildmenu' completion
    qfLineNr = { fg = c.frost.artic_water },
    qfFileName = { fg = c.frost.ice },

    -- DiffAdd = { bg = c.backlight.green1 }, -- diff mode: Added line
    -- DiffChange = { bg = c.backlight.yellow1 }, --  diff mode: Changed line
    -- DiffDelete = { bg = c.backlight.red1 }, -- diff mode: Deleted line
    DiffAdd = utils.make_diff(c.aurora.green), -- diff mode: Added line
    DiffChange = utils.make_diff(c.aurora.yellow), --  diff mode: Changed line
    DiffDelete = utils.make_diff(c.aurora.red), -- diff mode: Deleted line
    DiffText = utils.make_diff(c.frost.artic_water), -- diff mode: Changed text within a changed line
    DiffModified = { link = "DiffChange" },
    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    healthError = { fg = c.aurora.red },
    healthSuccess = { fg = c.aurora.green },
    healthWarning = { fg = c.aurora.yellow },

    -- BacklightRed10 = { fg = c.aurora.red, bg = utils.darken(c.aurora.red, 0.1) },
    -- BacklightRed20 = { fg = c.aurora.red, bg = utils.darken(c.aurora.red, 0.2) },
    -- BacklightRed30 = { fg = c.aurora.red, bg = utils.darken(c.aurora.red, 0.3) },
    -- BacklightYellow10 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.1) },
    -- BacklightYellow20 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.2) },
    -- BacklightYellow30 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.3) },
    -- BacklightRed10 = { fg = c.aurora.red, bg = utils.darken(c.aurora.red, 0.1) },
    -- BacklightGreen20 = { fg = c.aurora.green, bg = utils.darken(c.aurora.green, 0.2) },
    -- BacklightGreen30 = { fg = c.aurora.green, bg = utils.darken(c.aurora.green, 0.3) },

  }
end

return defaluts
