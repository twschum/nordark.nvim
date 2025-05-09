local c = require("nord.colors").palette
local utils = require("nord.utils")

local defaluts = {}

function defaluts.highlights()
  local options = require("nord.config").options
  local global_bg = utils.make_global_bg()
  local transparent_bg = utils.make_global_bg(true)

  local cursorline_bg = c.polar_night.black2
  if options.subtle_cursorline then
    cursorline_bg = c.polar_night.origin
  end

  return {
    ColorColumn = { bg = c.polar_night.black2 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- the character under the cursor
    CursorIM = { fg = c.snow_storm.brighter, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
    CursorColumn = { bg = c.polar_night.bright, sp = c.none }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = cursorline_bg }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
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
    ModeMsg = { fg = c.frost.artic_water }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg = { fg = c.frost.artic_water }, -- |more-prompt|
    Question = { fg = c.aurora.green }, -- |hit-enter| prompt and yes/no questions
    MsgArea = { bg = c.black2 }, -- Area for messages and cmdline
    MsgSeparator = { fg = c.line }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    NonText = { fg = c.polar_night.brighter }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.snow_storm.origin, bg = transparent_bg }, -- normal text
    Bold = { bold = true },
    Italic = { italic = true },
    NormalFloat = { fg = c.snow_storm.origin, bg = c.polar_night.darker }, -- Normal text in floating windows.
    FloatBorder = { fg = c.polar_night.brightest, bg = c.polar_night.darker }, -- Borders of floating windows
    Pmenu = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- Popup menu: normal item.
    PmenuSel = { bg = c.polar_night.brighter }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- Popup menu: Thumb of the scrollbar.
    QuickFixLine = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.frost.ice, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = c.snow_storm.brightest, bg = c.frost.ice }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    --Search = { fg = c.aurora.purple }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    --IncSearch = { fg = c.aurora.purple, bold = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    --CurSearch = { fg = c.aurora.brightest, bg = c.high }, -- current search results
    CurSearch = { link = "IncSearch" }, -- current search results
    SpecialKey = { fg = c.polar_night.brightest }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.frost.ice, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.snow_storm.brighter, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.snow_storm.brighter, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.snow_storm.brighter, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- status line of current window
    StatusLineNC = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.white, bg = c.polar_night.black2 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = c.polar_night.bright, bg = c.polar_night.black2 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.snow_storm.origin, bold = true, bg = c.polar_night.brighter }, -- tab pages line, active tab page label
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
    Added = { link = "DiffAdd" },
    Changed = { link = "DiffChange" },
    Removed = { link = "DiffDelete" },
    healthError = { fg = c.aurora.red },
    healthSuccess = { fg = c.aurora.green },
    healthWarning = { fg = c.aurora.yellow },
    WinBar = { bg = c.polar_night.origin },
    WinBarNC = { bg = c.polar_night.origin },
    NvimInternalError = { link = "ErrorMsg" },
  }
end

return defaluts
