local c = require("nord.colors").palette
local utils = require("nord.utils")

local treesitter = {}

-- TODO TODO NOTE XXX FIXME HACK
-- TODO @lang.help -> @lang.vimdoc
-- TODO imports

-- Deviated from gbprod/nord.nvim
-- comment -> grey_fg
-- text.todo -> link = "Todo"

function treesitter.highlights()
  local options = require("nord.config").options

  return {
    -- Misc
    ["@comment"] = vim.tbl_extend("force", { fg = c.grey_fg }, options.styles.comments), --  line and block comments
    ["@error"] = utils.make_error(c.aurora.red), --  syntax/parser errors

    -- ["@none"]     --  completely disable the highlight
    ["@keyword.directive"] = { fg = c.frost.artic_water }, --  various preprocessor directives & shebangs
    ["@preproc"] = { link = "@keyword.directive" }, -- @deprecated
    ["@keyword.directive.define"] = { fg = c.frost.artic_water }, --  preprocessor definition directives
    ["@define"] = { link = "@keyword.directive.define" }, -- @deprecated
    ["@operator"] = { fg = c.frost.artic_water }, --  symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.snow_storm.brightest }, --  delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = c.frost.ice }, --  brackets (e.g. `()` / `{}` / `[]`)
    ["@markup.list"] = { fg = c.frost.artic_water }, --  special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special"] = { link = "@markup.list" }, -- @deprecated

    -- Literals
    ["@string"] = { fg = c.aurora.green }, --  string literals
    ["@string.regexp"] = { fg = c.aurora.yellow }, --  regular expressions
    ["@string.regex"] = { link = "@string.regexp" }, -- @deprecated
    ["@string.escape"] = { fg = c.aurora.yellow }, --  escape sequences
    ["@string.special"] = { fg = c.aurora.yellow }, -- @deprecated
    ["@string.special.url"] = { fg = c.frost.polar_water, underline = true, sp = c.frost.polar_water }, -- @deprecated
    ["@string.special.url.comment"] = { fg = c.comment_special, underline = true, sp = c.comment_special },
    ["@character"] = { fg = c.aurora.green }, --  character literals
    ["@character.special"] = { fg = c.aurora.yellow }, --  special characters (e.g. wildcards)
    ["@boolean"] = { fg = c.frost.artic_water }, --  boolean literals
    ["@number"] = { fg = c.aurora.purple }, --  numeric literals
    ["@number.float"] = { fg = c.aurora.purple }, --  floating-point number literals
    ["@float"] = { link = "@number.float" }, -- @deprecated

    -- Functions
    ["@function"] = vim.tbl_extend("force", { fg = c.frost.ice }, options.styles.functions), --  function definitions
    ["@function.builtin"] = { fg = c.frost.ice }, --  built-in functions
    ["@function.call"] = { fg = c.frost.ice }, --  function calls
    ["@function.macro"] = { fg = c.frost.artic_water }, --  preprocessor macros
    ["@function.method"] = { fg = c.frost.ice }, --  method definitions
    ["@method"] = { link = "@function.method" }, -- @deprecated
    ["@function.method.call"] = { fg = c.frost.ice }, --  method calls
    ["@method.call"] = { link = "@function.method.call" }, -- @deprecated
    ["@constructor"] = { fg = c.frost.ice }, --  constructor calls and definitions
    ["@variable.parameter"] = { fg = c.snow_storm.origin }, --  parameters of a function
    ["@parameter"] = { link = "@variable.parameter" }, -- @deprecated

    -- Keywords
    ["@keyword"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  various keywords
    ["@keyword.function"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.functions), --  keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  operators that are English words (e.g. `and` / `or`)
    ["@keyword.return"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords like `return` and `yield`
    ["@keyword.conditional"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.coroutine"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
    ["@conditional"] = { link = "@keyword.conditional" }, -- @deprecated
    ["@keyword.repeat"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to loops (e.g. `for` / `while`)
    ["@repeat"] = { link = "@keyword.repeat" }, -- @deprecated
    ["@keyword.debug"] = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.keywords), --  keywords related to debugging
    ["@debug"] = { link = "@keyword.debug" }, -- @deprecated
    ["@label"] = vim.tbl_extend("force", { fg = c.frost.polar_water }, options.styles.keywords), --  GOTO and other labels (e.g. `label:` in C)
    ["@keyword.import"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords for including modules (e.g. `import` / `from` in Python)
    ["@include"] = { link = "@keyword.import" }, -- @deprecated
    ["@keyword.exception"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to exceptions (e.g. `throw` / `catch`)
    ["@exception"] = { link = "@keyword.exception" }, -- @deprecated

    -- Types
    ["@type"] = { fg = c.frost.polar_water }, --  type or class definitions and annotations
    ["@type.builtin"] = { fg = c.frost.artic_water }, --  built-in types
    ["@type.definition"] = { fg = c.frost.polar_water }, --  type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { fg = c.frost.artic_water }, --  type qualifiers (e.g. `const`)
    ["@keyword.storage"] = { fg = c.frost.artic_water }, --  visibility/life-time modifiers
    ["@storageclass"] = { link = "@keyword.storage" }, -- @deprecated
    ["@attribute"] = { fg = c.snow_storm.origin }, --  attribute annotations (e.g. Python decorators)
    ["@variable.member"] = { fg = c.snow_storm.origin }, --  object and struct fields
    ["@field"] = { link = "@field" }, -- @deprecated
    ["@property"] = { fg = c.snow_storm.origin }, --  similar to `@field`
    ["@structure"] = { link = "Structure" },

    -- Identifiers
    ["@variable"] = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.variables), --  various variable names
    ["@variable.builtin"] = { fg = c.frost.artic_water }, --  built-in variable names (e.g. `this`)
    ["@constant"] = { fg = c.snow_storm.origin }, --  constant identifiers
    ["@constant.builtin"] = { fg = c.frost.artic_water }, --  built-in constant values
    ["@constant.macro"] = { fg = c.frost.artic_water }, --  constants defined by the preprocessor
    ["@module"] = { fg = c.frost.polar_water }, -- NOTE c.snow_storm.darkened alternative, prefer go to match Type modules or namespaces
    ["@namespace"] = { link = "@module" }, -- @deprecated
    ["@string.special.symbol"] = { fg = c.snow_storm.origin }, --  symbols or atoms
    ["@symbol"] = { link = "@string.special.symbol" }, -- @deprecated

    -- https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316
    -- Text
    ["@text"] = { fg = c.snow_storm.origin }, -- @deprecated
    ["@markup.strong"] = { bold = true }, --  bold text
    ["@text.strong"] = { link = "@markup.strong" }, -- @deprecated
    ["@markup.italic"] = { italic = true }, --  text with emphasis
    ["@text.emphasis"] = { link = "@markup.italic" }, -- @deprecated
    ["@markup.underline"] = { underline = true }, --  underlined text
    ["@text.underline"] = { link = "@markup.underline" }, -- @deprecated
    ["@markup.strikethrough"] = { strikethrough = true }, --  strikethrough text
    ["@text.strike"] = { link = "@markup.strikethrough" }, -- @deprecated
    ["@text.title"] = { link = "@markup.heading" }, -- @deprecated
    ["@markup.raw"] = { fg = c.frost.polar_water }, --  literal or verbatim text
    ["@text.literal"] = { link = "@markup.raw" }, -- @deprecated
    --["@markup.link.url"] = { fg = c.aurora.green, underline = true, sp = c.aurora.green }, --  URIs (e.g. hyperlinks)
    ["@markup.link"] = { fg = c.frost.polar_water }, --  text references, footnotes, citations, etc.
    ["@markup.link.url"] = { link = "@string.special.url" }, --  URIs (e.g. hyperlinks)
    ["@markup.link.label"] = { link = "@string.special.url" }, -- link, reference descriptions
    ["@text.uri"] = { link = "@markup.link" }, -- @deprecated
    ["@markup.math"] = { fg = c.frost.polar_water }, --  math environments (e.g. `$ ... $` in LaTeX)
    ["@text.math"] = { link = "@markup.math" }, -- @deprecated
    ["@markup.environment"] = { fg = c.frost.polar_water }, --  text environments of markup languages
    ["@text.environment"] = { link = "@markup.environment" }, -- @deprecated
    ["@markup.environment.name"] = { fg = c.frost.artic_water }, --  text indicating the type of an environment
    ["@markup.heading"] = { fg = c.frost.artic_water, bold = true }, --  markdown headings
    ["@text.environment.name"] = { link = "@markup.environment.name" }, -- @deprecated
    ["@text.reference"] = { link = "@markup.link" }, -- @deprecated
    ["@comment.todo"] = { fg = c.aurora.yellow }, --  todo notes
    ["@text.todo"] = { link = "@comment.todo" }, -- @deprecated
    ["@comment.note"] = { fg = c.frost.artic_water }, --  info notes
    ["@text.note"] = { link = "@comment.note" }, -- @deprecated
    ["@comment.warning"] = { fg = c.aurora.yellow }, --  warning notes
    ["@text.warning"] = { link = "@comment.warning" }, -- @deprecated
    ["@comment.error"] = { fg = c.aurora.red }, --  danger/error notes
    ["@text.danger"] = { link = "@comment.error" }, -- @deprecated
    ["@text.diff.add"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@text.diff.delete"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.plus"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@diff.minus"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.delta"] = { link = "DiffChange" },

    -- Tags
    ["@tag"] = { fg = c.frost.artic_water }, --  XML tag names
    ["@tag.attribute"] = { fg = c.frost.polar_water }, --  XML tag attributes
    ["@tag.delimiter"] = { fg = c.frost.artic_water }, --  XML tag delimiters

    -- Conceal
    ["@conceal"] = { fg = c.none, bg = c.none }, --  for captures that are only used for concealing

    -- Spell
    -- ["@spell"] = {}, --  for defining regions to be spellchecked
    -- ["@nospell"] = {}, --  for defining regions that should NOT be spellchecked

    -- Language specific
    ["@constant.git_rebase"] = { fg = c.frost.polar_water },
    ["@property.yaml"] = { fg = c.frost.polar_water },
    ["@text.phpdoc"] = { fg = c.polar_night.light },
    ["@attribute.phpdoc"] = { fg = c.frost.artic_water },

    -- LSP Semantic Token Groups
    -- NOTE: maybe add these with distinct highlights?
    -- ["@lsp.typemod.variable.globalScope"] (global variables)
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = {}, -- don't let lsp comment override treesitter identifying tags and URLs
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.deriveHelper"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.field"] = { link = "@field" },
    ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.generic"] = { link = "@variable" },
    ["@lsp.type.interface"] = { link = "@type" }, -- TODO maybe lighter than type?
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@module" }, -- TODO but not in imports?
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@structure" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.typeParameter"] = { link = "@parameter" },
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = c.blue },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },
    ["@lsp.typemod.variable.globalScope"] = { fg = c.aurora.purple }, -- highlight globals!

    -- Python
    ["@lsp.type.namespace.python"] = { link = "@namespace" },
  }
end

return treesitter
