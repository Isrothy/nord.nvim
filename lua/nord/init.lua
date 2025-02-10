local nord = {}

local c = require("nord.colors").palette
local config = require("nord.config")
local utils = require("nord.utils")

local options = config.options
local global_bg = utils.make_global_bg()
local current_hi = vim.tbl_extend("force", { bg = c.polar_night.brighter }, config.options.styles.bufferline.current)

local defaults = {
  ColorColumn = { bg = c.polar_night.bright }, -- used for the columns set with 'colorcolumn'
  Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
  Cursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- the character under the cursor
  CursorIM = { fg = c.snow_storm.brighter, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
  CursorColumn = { bg = c.polar_night.bright }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine = { bg = c.polar_night.bright }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  Directory = { fg = c.frost.ice }, -- directory names (and other special names in listings)
  EndOfBuffer = { fg = c.polar_night.bright }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  ErrorMsg = { fg = c.snow_storm.origin, bg = c.aurora.red }, -- error messages on the command line
  VertSplit = { fg = options.borders and c.polar_night.bright or c.polar_night.origin, bg = c.none }, -- the column separating vertically split windows
  WinSeparator = {
    fg = options.borders and c.polar_night.bright or c.polar_night.origin,
    bg = c.none,
  }, -- Separators between window splits.
  Folded = { fg = c.snow_storm.brightest, bg = c.polar_night.bright }, -- line used for closed folds
  FoldColumn = { fg = c.polar_night.brightest, bg = global_bg }, -- 'foldcolumn'
  SignColumn = { fg = c.polar_night.bright, bg = utils.make_global_bg(true) }, -- column where |signs| are displayed
  -- Substitute = { link = "Search" }, -- |:substitute| replacement text highlighting
  LineNr = { fg = c.polar_night.brightest, bg = c.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  CursorLineNr = { fg = c.snow_storm.origin, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  MatchParen = { bg = c.polar_night.brightest, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  ModeMsg = { fg = c.snow_storm.origin }, -- 'showmode' message (e.g., "-- INSERT -- ")
  MsgArea = {}, -- Area for messages and cmdline
  MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
  MoreMsg = { fg = c.frost.ice }, -- |more-prompt|
  NonText = { fg = c.polar_night.brighter }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { fg = c.snow_storm.origin, bg = utils.make_global_bg(true) }, -- normal text
  NormalFloat = { fg = c.snow_storm.origin, bg = global_bg }, -- Normal text in floating windows.
  FloatBorder = { fg = c.polar_night.brightest, bg = global_bg }, -- Borders of floating windows
  Pmenu = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- Popup menu: normal item.
  PmenuSel = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: selected item.
  PmenuSbar = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: scrollbar.
  PmenuThumb = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- Popup menu: Thumb of the scrollbar.
  Question = { fg = c.snow_storm.origin }, -- |hit-enter| prompt and yes/no questions
  QuickFixLine = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  Search = options.search.theme == "vscode" and { fg = c.none, bg = utils.darken(c.frost.ice, 0.2) }
    or { fg = c.frost.ice, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  IncSearch = options.search.theme == "vscode" and { fg = c.snow_storm.origin, bg = utils.darken(c.frost.ice, 0.5) }
    or { fg = c.snow_storm.brightest, bg = c.frost.ice }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  CurSearch = { link = "IncSearch" },
  SpecialKey = { fg = c.polar_night.brightest }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
  SpellBad = { sp = c.aurora.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  SpellCap = { sp = c.aurora.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  SpellLocal = { sp = c.snow_storm.brighter, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  SpellRare = { fg = c.snow_storm.brightest, bg = global_bg, sp = c.snow_storm.brightest, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
  StatusLine = { fg = c.frost.ice, bg = c.polar_night.brighter }, -- status line of current window
  StatusLineNC = { fg = c.snow_storm.origin, bg = c.polar_night.brightest }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  TabLine = { fg = c.snow_storm.origin }, -- tab pages line, not active tab page label
  TabLineFill = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- tab pages line, where there are no labels
  TabLineSel = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- tab pages line, active tab page label
  Title = { fg = c.snow_storm.origin, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
  Visual = { fg = c.none, bg = c.polar_night.brighter }, -- Visual mode selection
  VisualNOS = { fg = c.none, bg = c.polar_night.brighter }, -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg = { fg = c.polar_night.origin, bg = c.aurora.yellow }, -- warning messages
  Whitespace = { fg = c.polar_night.brighter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  WildMenu = { fg = c.frost.ice, bg = c.polar_night.bright }, -- current match in 'wildmenu' completion
  qfLineNr = { fg = c.frost.artic_water },
  qfFileName = { fg = c.frost.ice },
  DiffAdd = utils.make_diff(c.aurora.green), -- diff mode: Added line
  DiffChange = utils.make_diff(c.aurora.yellow), --  diff mode: Changed line
  DiffDelete = utils.make_diff(c.aurora.red), -- diff mode: Deleted line
  DiffText = utils.make_diff(c.frost.artic_water), -- diff mode: Changed text within a changed line
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
}

local lsp = {
  -- LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
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

  DiagnosticUnderlineError = { undercurl = true, sp = c.aurora.red }, -- Used to underline "Error" diagnostics
  DiagnosticUnderlineWarn = { undercurl = true, sp = c.aurora.yellow }, -- Used to underline "Warning" diagnostics
  DiagnosticUnderlineInfo = { undercurl = true, sp = c.frost.ice }, -- Used to underline "Information" diagnostics
  DiagnosticUnderlineHint = { undercurl = true, sp = c.frost.artic_water }, -- Used to underline "Hint" diagnostics

  LspCodeLens = { fg = c.polar_night.brightest },
  LspInlayHint = { fg = c.polar_night.brightest },

  -- ray-x/lsp_signature.nvim
  LspSignatureActiveParameter = { bg = c.polar_night.brighter, bold = true },

  -- LspTrouble
  TroubleText = { fg = c.snow_storm.origin },
  TroubleCount = { fg = c.frost.ice, bg = c.polar_night.brightest },
  TroubleNormal = { fg = c.snow_storm.origin, bg = c.none },
  TroubleIndent = { fg = c.polar_night.light, bg = c.none },
  TroubleLocation = { fg = c.polar_night.light, bg = c.none },
}

local syntax = {
  Bold = { bold = true },
  Boolean = { fg = c.frost.artic_water }, --  a boolean constant: TRUE, false
  Character = { fg = c.aurora.green }, --  a character constant: 'c', '\n'
  Conditional = { fg = c.frost.artic_water }, --  if, then, else, endif, switch, etc.
  Constant = { fg = c.snow_storm.origin }, -- (preferred) any constant
  Comment = vim.tbl_extend("force", { fg = c.polar_night.light }, options.styles.comments), -- any comment
  Debug = { fg = c.snow_storm.origin }, --    debugging statements
  Define = { fg = c.frost.artic_water }, --   preprocessor #define
  Delimiter = { fg = c.snow_storm.brightest }, --  character that needs attention
  -- Error = { fg = c.snow_storm.origin, bg = c.aurora.red }, -- (preferred) any erroneous construct
  Error = utils.make_error(c.aurora.red), -- (preferred) any erroneous construct
  Exception = { fg = c.frost.artic_water }, --  try, catch, throw
  Float = { fg = c.aurora.purple }, --    a floating point constant: 2.3e10
  Function = vim.tbl_extend("force", { fg = c.frost.ice }, options.styles.functions), -- function name (also: methods for classes)
  Identifier = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.variables), -- (preferred) any variable name
  Include = { fg = c.frost.artic_water }, --  preprocessor #include
  Italic = { italic = true },
  Keyword = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  any other keyword
  Label = { fg = c.frost.artic_water }, --    case, default, etc.
  Macro = { link = "Define" }, --    same as Define
  Number = { fg = c.aurora.purple }, --   a number constant: 234, 0xff
  Operator = { fg = c.frost.artic_water }, -- "sizeof", "+", "*", etc.
  PreCondit = { link = "PreProc" }, --  preprocessor #if, #else, #endif, etc.
  PreProc = { fg = c.frost.artic_water }, -- (preferred) generic Preprocessor
  Repeat = { fg = c.frost.artic_water }, --   for, do, while, etc.
  Special = { fg = c.snow_storm.origin }, -- (preferred) any special symbol
  SpecialChar = { fg = c.aurora.yellow }, --  special character in a constant
  SpecialComment = { fg = c.frost.ice }, -- special things inside a comment
  Statement = { fg = c.frost.artic_water }, -- (preferred) any statement
  StorageClass = { fg = c.frost.artic_water }, -- static, register, volatile, etc.
  String = { fg = c.aurora.green }, --   a string constant: "this is a string"
  Structure = { fg = c.frost.artic_water }, --  struct, union, enum, etc.
  Tag = { fg = c.snow_storm.origin }, --    you can use CTRL-] on this
  Todo = { fg = c.aurora.yellow, bg = c.none }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  Type = { fg = c.frost.artic_water }, -- (preferred) int, long, char, etc.
  Typedef = { fg = c.frost.artic_water }, --  A typedef
  Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
  -- ("Ignore", below, may be invisible...)
  -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

  htmlH1 = { fg = c.frost.ice, bold = true },
  htmlH2 = { fg = c.frost.ice },

  markdownHeadingDelimiter = { fg = c.frost.polar_water },
  markdownCode = { fg = c.frost.polar_water },
  markdownCodeBlock = { fg = c.snow_storm.origin },
  markdownH1 = { fg = c.frost.ice, bold = true },
  markdownH2 = { fg = c.frost.ice },
  markdownLinkText = { fg = c.frost.ice, underline = true },
  markdownBlockquote = { fg = c.frost.polar_water },
  markdownFootnote = { fg = c.frost.polar_water },
  markdownId = { fg = c.frost.polar_water },
  markdownIdDeclaration = { fg = c.frost.polar_water },
  markdownUrl = { fg = c.snow_storm.origin },

  debugPC = { bg = c.frost.artic_water }, -- used for highlighting the current line in terminal-debug
  debugBreakpoint = { bg = c.frost.artic_ocean, fg = c.frost.artic_water }, -- used for breakpoint colors in terminal-debug
}

local terminal = {
  TermCursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- cursor in a focused terminal
  TermCursorNC = { fg = c.polar_night.brightest, bg = c.none, reverse = true }, -- cursor in an unfocused terminal
}

local treesitter = {
  -- Misc
  ["@comment"] = vim.tbl_extend("force", { fg = c.polar_night.light }, options.styles.comments), --  line and block comments
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
  ["@markup.link.label"] = { fg = c.aurora.yellow }, --  other special strings (e.g. dates)
  ["@string.special"] = { link = "@markup.link.label" }, -- @deprecated
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
  ["@variable.parameter"] = { fg = c.frost.ice }, --  parameters of a function
  ["@parameter"] = { link = "@variable.parameter" }, -- @deprecated

  -- Keywords
  ["@keyword"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  various keywords
  ["@keyword.function"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.functions), --  keywords that define a function (e.g. `func` in Go, `def` in Python)
  ["@keyword.operator"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  operators that are English words (e.g. `and` / `or`)
  ["@keyword.return"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords like `return` and `yield`
  ["@keyword.conditional"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
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

  -- Identifiers
  ["@variable"] = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.variables), --  various variable names
  ["@variable.builtin"] = { fg = c.frost.artic_water }, --  built-in variable names (e.g. `this`)
  ["@constant"] = { fg = c.snow_storm.origin }, --  constant identifiers
  ["@constant.builtin"] = { fg = c.frost.artic_water }, --  built-in constant values
  ["@constant.macro"] = { fg = c.frost.artic_water }, --  constants defined by the preprocessor
  ["@module"] = { fg = c.snow_storm.origin }, --  modules or namespaces
  ["@namespace"] = { link = "@module" }, -- @deprecated
  ["@string.special.symbol"] = { fg = c.snow_storm.origin }, --  symbols or atoms
  ["@symbol"] = { link = "@string.special.symbol" }, -- @deprecated

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
  ["@markup.heading"] = { fg = c.frost.ice, bold = true }, --  text that is part of a title
  ["@text.title"] = { link = "@markup.heading" }, -- @deprecated
  ["@markup.raw"] = { fg = c.frost.polar_water }, --  literal or verbatim text
  ["@text.literal"] = { link = "@markup.raw" }, -- @deprecated
  ["@markup.link.url"] = { fg = c.aurora.green, underline = true, sp = c.aurora.green }, --  URIs (e.g. hyperlinks)
  ["@text.uri"] = { link = "@markup.link.url" }, -- @deprecated
  ["@markup.math"] = { fg = c.frost.polar_water }, --  math environments (e.g. `$ ... $` in LaTeX)
  ["@text.math"] = { link = "@markup.math" }, -- @deprecated
  ["@markup.environment"] = { fg = c.frost.polar_water }, --  text environments of markup languages
  ["@text.environment"] = { link = "@markup.environment" }, -- @deprecated
  ["@markup.environment.name"] = { fg = c.frost.artic_water }, --  text indicating the type of an environment
  ["@text.environment.name"] = { link = "@markup.environment.name" }, -- @deprecated
  ["@markup.link"] = { fg = c.frost.polar_water }, --  text references, footnotes, citations, etc.
  ["@text.reference"] = { link = "@markup.link" }, -- @deprecated
  ["@comment.todo"] = { fg = c.frost.artic_water }, --  todo notes
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
  ["@character.printf"] = { fg = c.aurora.yellow },

  -- LSP Semantic Token Groups
  ["@lsp.type.class"] = { link = "@type" },
  ["@lsp.type.comment"] = { link = "@comment" },
  ["@lsp.type.enum"] = { link = "@type" },
  ["@lsp.type.enumMember"] = { link = "@constant" },
  ["@lsp.type.field"] = { link = "@field" },
  ["@lsp.type.function"] = { link = "@function" },
  ["@lsp.type.interface"] = { link = "@type" },
  ["@lsp.type.keyword"] = { link = "@keyword" },
  ["@lsp.type.method"] = { link = "@method" },
  ["@lsp.type.namespace"] = { link = "@namespace" },
  ["@lsp.type.parameter"] = { link = "@parameter" },
  ["@lsp.type.property"] = { link = "@property" },
  ["@lsp.type.struct"] = { link = "@structure" },
  ["@lsp.type.typeParameter"] = { link = "@parameter" },
  ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
  ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
  ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
  ["@lsp.typemod.operator.injected"] = { link = "@operator" },
  ["@lsp.typemod.string.injected"] = { link = "@string" },
  ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  ["@lsp.typemod.variable.injected"] = { link = "@variable" },
}

local bufferline = {
  -- Barbar
  BufferTabpageFill = { bg = global_bg, fg = c.polar_night.origin },
  BufferCurrent = current_hi,
  BufferCurrentIndex = current_hi,
  BufferCurrentMod = vim.tbl_extend(
    "force",
    { bg = c.polar_night.brighter, fg = c.aurora.yellow },
    config.options.styles.bufferline.modified
  ),
  BufferCurrentSign = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
  BufferCurrentTarget = vim.tbl_extend(
    "force",
    { bg = c.polar_night.brighter, fg = c.aurora.red, bold = true },
    config.options.styles.bufferline.current
  ),
  BufferCurrentHINT = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
  BufferCurrentINFO = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
  BufferCurrentWARN = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
  BufferCurrentERROR = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
  BufferVisible = { bg = c.polar_night.bright },
  BufferVisibleIndex = { bg = c.polar_night.bright },
  BufferVisibleMod = vim.tbl_extend(
    "force",
    { bg = c.polar_night.bright, fg = c.aurora.yellow },
    config.options.styles.bufferline.modified
  ),
  BufferVisibleSign = { bg = c.polar_night.bright, fg = c.frost.artic_water },
  BufferVisibleTarget = { bg = c.polar_night.bright, fg = c.aurora.red, bold = true },
  BufferVisibleHINT = { bg = c.polar_night.bright, fg = c.frost.artic_water },
  BufferVisibleINFO = { bg = c.polar_night.bright, fg = c.frost.ice },
  BufferVisibleWARN = { bg = c.polar_night.bright, fg = c.aurora.yellow },
  BufferVisibleERROR = { bg = c.polar_night.bright, fg = c.aurora.red },
  BufferInactive = { bg = global_bg, fg = c.polar_night.light },
  BufferInactiveIndex = { bg = global_bg, fg = c.polar_night.light },
  BufferInactiveMod = vim.tbl_extend(
    "force",
    { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
    config.options.styles.bufferline.modified
  ),
  BufferInactiveSign = { bg = global_bg, fg = c.polar_night.origin },
  BufferInactiveTarget = { bg = global_bg, fg = c.aurora.red, bold = true },
  BufferInactiveHINT = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.4) },
  BufferInactiveINFO = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.4) },
  BufferInactiveWARN = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
  BufferInactiveERROR = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.4) },
  BufferTabpages = { bg = global_bg, fg = c.none },
  BufferTabpage = { bg = global_bg, fg = c.none },
}

local completion = {
  CmpItemAbbrDeprecated = { fg = c.polar_night.light },
  CmpItemAbbrMatch = { fg = c.frost.ice, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = c.frost.ice, bold = true },
  CmpItemKind = { fg = c.frost.artic_water },
  CmpItemKindVariable = { fg = c.frost.ice },
  CmpItemKindInterface = { fg = c.frost.ice },
  CmpItemKindClass = { fg = c.frost.ice },
  CmpItemKindFunction = { fg = c.aurora.purple },
  CmpItemKindMethod = { fg = c.aurora.purple },
  CmpItemKindSnippet = { fg = c.aurora.green },
  CmpItemKindText = { fg = c.snow_storm.origin },

  CodeiumSuggestion = { fg = c.polar_night.light },

  BlinkCmpMenuBorder = { fg = c.polar_night.bright },
  BlinkCmpMenuSelection = { fg = c.none, bg = c.polar_night.brighter },
  BlinkCmpLabelDeprecated = { fg = c.polar_night.light },
  BlinkCmpLabelMatch = { fg = c.frost.ice, bold = true },
  BlinkCmpGhostText = { fg = c.polar_night.light },
  BlinkCmpDocBorder = { fg = c.polar_night.bright },
  BlinkCmpSignatureHelpBorder = { fg = c.polar_night.bright },
  BlinkCmpKindArray = { link = "@lsp.type.array" },
  BlinkCmpKindBoolean = { link = "@lsp.type.boolean" },
  BlinkCmpKindClass = { link = "@lsp.type.class" },
  BlinkCmpKindColor = { link = "@lsp.type.color" },
  BlinkCmpKindConstant = { link = "@lsp.type.constant" },
  BlinkCmpKindConstructor = { link = "@lsp.type.constructor" },
  BlinkCmpKindEnum = { link = "@lsp.type.enum" },
  BlinkCmpKindEnumMember = { link = "@lsp.type.enumMember" },
  BlinkCmpKindEvent = { link = "@lsp.type.event" },
  BlinkCmpKindField = { link = "@lsp.type.field" },
  BlinkCmpKindFile = { link = "@lsp.type.file" },
  BlinkCmpKindFolder = { link = "@lsp.type.folder" },
  BlinkCmpKindFunction = { link = "@lsp.type.function" },
  BlinkCmpKindInterface = { link = "@lsp.type.interface" },
  BlinkCmpKindKey = { link = "@lsp.type.key" },
  BlinkCmpKindKeyword = { link = "@lsp.type.keyword" },
  BlinkCmpKindMethod = { link = "@lsp.type.method" },
  BlinkCmpKindModule = { link = "@lsp.type.module" },
  BlinkCmpKindNamespace = { link = "@lsp.type.namespace" },
  BlinkCmpKindNull = { link = "@lsp.type.null" },
  BlinkCmpKindNumber = { link = "@lsp.type.number" },
  BlinkCmpKindObject = { link = "@lsp.type.object" },
  BlinkCmpKindOperator = { link = "@lsp.type.operator" },
  BlinkCmpKindPackage = { link = "@lsp.type.package" },
  BlinkCmpKindProperty = { link = "@lsp.type.property" },
  BlinkCmpKindReference = { link = "@lsp.type.reference" },
  BlinkCmpKindSnippet = { fg = c.aurora.green },
  BlinkCmpKindString = { link = "@lsp.type.string" },
  BlinkCmpKindStruct = { link = "@lsp.type.struct" },
  BlinkCmpKindText = { link = "@lsp.type.text" },
  BlinkCmpKindTypeParameter = { link = "@lsp.type.typeParameter" },
  BlinkCmpKindUnit = { link = "@lsp.type.unit" },
  BlinkCmpKindValue = { link = "@lsp.type.value" },
  BlinkCmpKindVariable = { link = "@lsp.type.variable" },

  BlinkCmpKindCodeium = { fg = c.aurora.green },
  BlinkCmpKindCopilot = { fg = c.aurora.green },
  BlinkCmpKind = { fg = c.frost.artic_water },
}

local diffview = {
  DiffviewFilePanelInsertions = { fg = c.aurora.green },
  DiffviewFilePanelDeletions = { fg = c.aurora.red },
  DiffviewStatusModified = { fg = c.aurora.yellow },
}

local filetree = {

  -- NvimTree
  NvimTreeNormal = { fg = c.snow_storm.origin },
  NvimTreeWinSeparator = { fg = config.options.borders and c.polar_night.bright or c.none },
  NvimTreeNormalNC = { fg = c.snow_storm.origin },
  NvimTreeRootFolder = { fg = c.snow_storm.origin, bold = true },
  NvimTreeGitDirty = { fg = c.aurora.yellow },
  NvimTreeGitNew = { fg = c.aurora.green },
  NvimTreeGitDeleted = { fg = c.aurora.red },
  NvimTreeGitIgnored = { fg = c.polar_night.light },
  NvimTreeSpecialFile = { fg = c.aurora.yellow, underline = true },
  NvimTreeIndentMarker = { fg = c.frost.artic_water },
  NvimTreeImageFile = { fg = c.snow_storm.origin },
  NvimTreeSymlink = { fg = c.frost.artic_water },
  NvimTreeFolderIcon = { fg = c.frost.artic_water },
  NvimTreeOpenedFolderName = { fg = c.snow_storm.origin },

  NeoTreeDimText = { fg = c.polar_night.brightest },
  NeoTreeDirectoryIcon = { fg = c.frost.artic_water },
  NeoTreeDirectoryName = { fg = c.snow_storm.origin },
  NeoTreeDotfile = { fg = c.polar_night.light },
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

local git = {

  -- airblade/vim-gitgutter
  GitGutterAdd = { fg = c.aurora.green },
  GitGutterChange = { fg = c.aurora.yellow },
  GitGutterDelete = { fg = c.aurora.red },

  -- lewis6991/gitsigns.nvim
  GitSignsAdd = { fg = c.aurora.green },
  GitSignsAddNr = { fg = c.aurora.green },
  GitSignsAddLn = { fg = c.aurora.green },
  GitSignsChange = { fg = c.aurora.yellow },
  GitSignsChangeNr = { fg = c.aurora.yellow },
  GitSignsChangeLn = { fg = c.aurora.yellow },
  GitSignsDelete = { fg = c.aurora.red },
  GitSignsDeleteNr = { fg = c.aurora.red },
  GitSignsDeleteLn = { fg = c.aurora.red },
  GitSignsCurrentLineBlame = { fg = c.polar_night.light },

  -- isakbm/gitgraph.nvim
  GitGraphHash = { fg = c.aurora.purple },
  GitGraphTimestamp = { fg = c.frost.ice },
  GitGraphAuthor = { fg = c.aurora.green },
  GitGraphBranchName = { fg = c.aurora.red },
  GitGraphBranchTag = { fg = c.aurora.yellow },
  GitGraphBranchMsg = { fg = c.snow_storm.origin },
  GitGraphBranch1 = { fg = c.frost.artic_ocean },
  GitGraphBranch2 = { fg = c.aurora.green },
  GitGraphBranch3 = { fg = c.aurora.red },
  GitGraphBranch4 = { fg = c.aurora.yellow },
  GitGraphBranch5 = { fg = c.frost.ice },
}

local glance = {
  GlancePreviewNormal = { bg = c.polar_night.origin },
  GlancePreviewBorderBottom = { fg = c.polar_night.bright, bg = c.polar_night.origin },
  GlanceBorderTop = { link = "GlancePreviewBorderBottom" },
  GlancePreviewMatch = { bg = c.polar_night.brightest },
  GlancePreviewEndOfBuffer = { bg = c.polar_night.origin },
  GlancePreviewCursorLine = { link = "CursorLine" },
  GlancePreviewSignColumn = { link = "SignColumn" },
  GlancePreviewLineNr = { link = "LineNr" },

  GlanceWinBarFilename = { fg = c.frost.polar_water, bg = c.polar_night.brighter },
  GlanceWinBarFilepath = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
  GlanceWinBarTitle = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },

  GlanceListNormal = { bg = c.polar_night.bright },
  GlanceListFilename = { fg = c.frost.polar_water },
  GlanceListBorderBottom = { link = "GlancePreviewBorderBottom" },
  GlanceListMatch = { bg = c.polar_night.brightest },
  GlanceListCursorLine = { bg = c.polar_night.brighter },
  GlanceListFilepath = { fg = c.polar_night.light },
  GlanceListCount = { fg = c.aurora.purple },
  GlanceFoldIcon = { fg = c.snow_storm.origin },
  GlanceListEndOfBuffer = { bg = c.polar_night.bright },
  GlanceIndent = { fg = c.polar_night.brightest },
}

local markview = {
  MarkviewCode = { bg = c.polar_night.bright },
  MarkviewInlineCode = { bg = c.polar_night.bright },

  MarkviewHeading1 = { fg = c.aurora.green, bg = utils.darken(c.aurora.green, 0.1) },
  MarkviewHeading2 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.1) },
  MarkviewHeading3 = { fg = c.aurora.purple, bg = utils.darken(c.aurora.purple, 0.1) },
  MarkviewHeading4 = { fg = c.frost.polar_water, bg = utils.darken(c.frost.polar_water, 0.1) },
  MarkviewHeading5 = { fg = c.frost.ice, bg = utils.darken(c.frost.ice, 0.1) },
  MarkviewHeading6 = { fg = c.frost.artic_ocean, bg = utils.darken(c.frost.artic_ocean, 0.1) },

  MarkviewHeading1Sign = { fg = c.aurora.green },
  MarkviewHeading2Sign = { fg = c.aurora.yellow },
  MarkviewHeading3Sign = { fg = c.aurora.purple },
  MarkviewHeading4Sign = { fg = c.frost.polar_water },
  MarkviewHeading5Sign = { fg = c.frost.ice },
  MarkviewHeading6Sign = { fg = c.frost.artic_ocean },
}

local mini = {
  MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
  MiniIndentscopePrefix = { nocombine = true },
}

local motion = {
  LeapMatch = { fg = c.polar_night.bright, bg = c.frost.polar_water, bold = true, nocombine = true },
  LeapLabelPrimary = { fg = c.polar_night.bright, bg = c.aurora.green, bold = true, nocombine = true },
  LeapLabelSecondary = { fg = c.polar_night.bright, bg = c.aurora.purple, bold = true, nocombine = true },
  LeapLabelSelected = { fg = c.polar_night.bright, bg = c.aurora.yellow, bold = true, nocombine = true },

  FlashMatch = { bg = c.polar_night.bright, fg = c.snow_storm.origin },
  FlashCurrent = { bg = c.polar_night.brighter, fg = c.snow_storm.origin, underline = true },
  FlashLabel = { bg = c.aurora.yellow, fg = c.polar_night.origin, bold = true },
}

local neogit = {
  NeogitDiffAdd = { fg = c.aurora.green, bg = c.polar_night.bright },
  NeogitDiffAddHighlight = { fg = c.aurora.green, bg = c.polar_night.bright },
  NeogitDiffChange = { fg = c.aurora.yellow, bg = c.polar_night.bright },
  NeogitDiffDelete = { fg = c.aurora.red, bg = c.polar_night.bright },
  NeogitDiffDeleteHighlight = { fg = c.aurora.red, bg = c.polar_night.bright },
  NeogitDiffText = { fg = c.frost.artic_water, bg = c.polar_night.bright },
  NeogitContextHighlight = { fg = c.frost.artic_water, bg = c.polar_night.bright },
  NeogitDiffContextHighlight = { fg = c.frost.artic_water, bg = c.polar_night.bright },
  NeogitHunkHeader = { fg = c.snow_storm.origin, bg = c.polar_night.brightest },
  NeogitDiffAddCursor = { fg = c.aurora.green, bg = c.polar_night.origin },
  NeogitDiffDeleteCursor = { fg = c.aurora.red, bg = c.polar_night.origin },
  NeogitDiffContext = { fg = c.frost.artic_water, bg = c.polar_night.origin },
  NeogitDiffContextCursor = { fg = c.frost.artic_water, bg = c.polar_night.origin },
}

local notify = {
  -- rcarriga/nvim-notify
  NotifyERRORBorder = { fg = utils.darken(c.aurora.red, 0.5, c.polar_night.origin) },
  NotifyERRORIcon = { fg = c.aurora.red },
  NotifyERRORTitle = { fg = c.aurora.red },

  NotifyWARNBorder = { fg = utils.darken(c.aurora.yellow, 0.5, c.polar_night.origin) },
  NotifyWARNIcon = { fg = c.aurora.yellow },
  NotifyWARNTitle = { fg = c.aurora.yellow },

  NotifyINFOBorder = { fg = utils.darken(c.frost.artic_water, 0.5, c.polar_night.origin) },
  NotifyINFOIcon = { fg = c.frost.artic_water },
  NotifyINFOTitle = { fg = c.frost.artic_water },

  NotifyDEBUGBorder = { fg = c.polar_night.bright },
  NotifyDEBUGIcon = { fg = c.snow_storm.origin },
  NotifyDEBUGTitle = { fg = c.snow_storm.origin },

  NotifyTRACEBorder = { fg = utils.darken(c.aurora.purple, 0.5, c.polar_night.origin) },
  NotifyTRACEIcon = { fg = c.aurora.purple },
  NotifyTRACETitle = { fg = c.aurora.purple },

  NotifyBackground = { bg = utils.make_global_bg() },

  -- vigoux/notifier.nvim
  NotifierTitle = { fg = c.frost.polar_water, bold = true },
  NotifierContentDim = { fg = c.polar_night.light },
}

local picker = {
  TelescopeBorder = { fg = c.polar_night.light, bg = utils.make_global_bg(true) },
  TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
  TelescopePromptCounter = { fg = c.polar_night.light },
  TelescopeMatching = { fg = c.frost.ice, bold = true },

  FzfLuaBorder = { fg = c.polar_night.light, bg = utils.make_global_bg() },
  FzfLuaTitle = { fg = c.snow_storm.origin, bold = true },
  FzfLuaHeaderBind = { fg = c.frost.ice },
  FzfLuaHeaderText = { fg = c.frost.artic_ocean },
  FzfLuaPathColNr = { fg = c.frost.ice },
  FzfLuaPathLineNr = { fg = c.aurora.green },
  FzfLuaBufNr = { fg = c.aurora.yellow },
  FzfLuaBufFlagCur = { fg = c.aurora.red },
  FzfLuaBufFlagAlt = { fg = c.frost.ice },
  FzfLuaTabTitle = { fg = c.frost.artic_water },
  FzfLuaTabMarker = { fg = c.aurora.yellow },
  FzfLuaLiveSym = { fg = c.aurora.red },
}

local snacks = {
  SnacksDashboardDir = { link = "Comment" },

  SnacksPickerTotals = { link = "Comment" },
  SnacksPickerDir = { link = "Comment" },
  SnacksPickerBufFlags = { link = "Comment" },
  SnacksPickerKeymapRhs = { link = "Comment" },
  SnacksPickerGitStatus = { link = "Comment" },
}

local ui = {
  -- folke/which-key.nvim
  WhichKey = { fg = c.frost.ice, bold = true },
  WhichKeyGroup = { fg = c.frost.artic_water },
  WhichKeyDesc = { fg = c.snow_storm.origin },
  WhichKeyFloat = { bg = c.polar_night.bright },

  -- SmiteshP/nvim-navic
  NavicIconsFile = { link = "@include" },
  NavicIconsModule = { link = "@include" },
  NavicIconsNamespace = { link = "@lsp.type.namespace" },
  NavicIconsPackage = { link = "@include" },
  NavicIconsClass = { link = "@lsp.type.class" },
  NavicIconsMethod = { link = "@lsp.type.method" },
  NavicIconsProperty = { link = "@lsp.type.property" },
  NavicIconsField = { link = "@lsp.type.field" },
  NavicIconsConstructor = { link = "@constructor" },
  NavicIconsEnum = { link = "@lsp.type.enum" },
  NavicIconsInterface = { link = "@lsp.type.interface" },
  NavicIconsFunction = { link = "@lsp.type.function" },
  NavicIconsVariable = { link = "@variable" },
  NavicIconsConstant = { link = "@constant" },
  NavicIconsString = { link = "@string" },
  NavicIconsNumber = { link = "@number" },
  NavicIconsBoolean = { link = "@boolean" },
  NavicIconsArray = { link = "@variable" },
  NavicIconsObject = { link = "@lsp.type.class" },
  NavicIconsKey = { link = "@variable" },
  NavicIconsKeyword = { link = "@keyword" },
  NavicIconsNull = { link = "@variable" },
  NavicIconsEnumMember = { link = "@lsp.type.enumMember" },
  NavicIconsStruct = { link = "@lsp.type.struct" },
  NavicIconsEvent = { link = "@lsp.type.event" },
  NavicIconsOperator = { link = "@lsp.type.operator" },
  NavicIconsTypeParameter = { link = "@lsp.type.typeParameter" },
  NavicText = { link = "@text" },
  NavicSeparator = { fg = c.frost.artic_water, bg = c.polar_night.brighter },

  -- stevearc/aerial.nvim
  AerialLine = { bg = c.polar_night.bright },
  AerialLineNC = { bg = c.polar_night.bright },

  AerialArrayIcon = { link = "AerialArray" },
  AerialBooleanIcon = { link = "AerialBoolean" },
  AerialClassIcon = { link = "AerialClass" },
  AerialConstantIcon = { link = "AerialConstant" },
  AerialConstructorIcon = { link = "AerialConstructor" },
  AerialEnumIcon = { link = "AerialEnum" },
  AerialEnumMemberIcon = { link = "AerialEnumMember" },
  AerialEventIcon = { link = "AerialEvent" },
  AerialFieldIcon = { link = "AerialField" },
  AerialFileIcon = { link = "AerialFile" },
  AerialFunctionIcon = { link = "AerialFunction" },
  AerialInterfaceIcon = { link = "AerialInterface" },
  AerialKeyIcon = { link = "AerialKey" },
  AerialMethodIcon = { link = "AerialMethod" },
  AerialModuleIcon = { link = "AerialModule" },
  AerialNamespaceIcon = { link = "AerialNamespace" },
  AerialNullIcon = { link = "AerialNull" },
  AerialNumberIcon = { link = "AerialNumber" },
  AerialObjectIcon = { link = "AerialObject" },
  AerialOperatorIcon = { link = "AerialOperator" },
  AerialPackageIcon = { link = "AerialPackage" },
  AerialPropertyIcon = { link = "AerialProperty" },
  AerialStringIcon = { link = "AerialString" },
  AerialStructIcon = { link = "AerialStruct" },
  AerialTypeParameterIcon = { link = "AerialTypeParameter" },
  AerialVariableIcon = { link = "AerialVariable" },

  AerialArray = { link = "@lsp.type.variable" },
  AerialBoolean = { link = "@boolean" },
  AerialClass = { link = "@lsp.type.class" },
  AerialConstant = { link = "@constant" },
  AerialConstructor = { link = "@constructor" },
  AerialEnum = { link = "@lsp.type.enum" },
  AerialEnumMember = { link = "@lsp.type.enumMember" },
  AerialEvent = { link = "@lsp.type.event" },
  AerialField = { link = "@field" },
  AerialFile = { link = "@include" },
  AerialFunction = { link = "@lsp.type.function" },
  AerialInterface = { link = "@lsp.type.interface" },
  AerialKey = { link = "@variable" },
  AerialMethod = { link = "@lsp.type.method" },
  AerialModule = { link = "@include" },
  AerialNamespace = { link = "@lsp.type.namespace" },
  AerialNull = { link = "@variable" },
  AerialNumber = { link = "@number" },
  AerialObject = { link = "@variable" },
  AerialOperator = { link = "@operator" },
  AerialPackage = { link = "@include" },
  AerialProperty = { link = "@lsp.type.property" },
  AerialString = { link = "@string" },
  AerialStruct = { link = "@lsp.type.struct" },
  AerialTypeParameter = { link = "@lsp.type.typeParameter" },
  AerialVariable = { link = "@variable" },

  -- p00f/nvim-ts-rainbow
  rainbowcol1 = { fg = c.frost.artic_water },
  rainbowcol2 = { fg = c.aurora.green },
  rainbowcol3 = { fg = c.aurora.red },
  rainbowcol4 = { fg = c.aurora.yellow },
  rainbowcol5 = { fg = c.frost.polar_water },
  rainbowcol6 = { fg = c.aurora.purple },
  rainbowcol7 = { fg = c.snow_storm.origin },

  --"HiPhish/rainbow-delimiters.nvim",
  RainbowDelimiterRed = { fg = c.aurora.red },
  RainbowDelimiterYellow = { fg = c.aurora.yellow },
  RainbowDelimiterBlue = { fg = c.frost.artic_ocean },
  RainbowDelimiterOrange = { fg = c.aurora.green },
  RainbowDelimiterGreen = { fg = c.aurora.orange },
  RainbowDelimiterCyan = { fg = c.frost.ice },
  RainbowDelimiterViolet = { fg = c.aurora.purple },

  -- tzachar/highlight-undo.nvim
  HighlightUndo = { link = "Search" },
  HighlightRedo = { link = "Search" },

  IlluminatedWordText = { fg = c.none, bg = c.polar_night.brightest },
  IlluminatedWordRead = { fg = c.none, bg = c.polar_night.brightest },
  IlluminatedWordWrite = { fg = c.none, bg = c.polar_night.brightest },

  SnacksDashboardDir = { link = "Comment" },
}

function nord.load(opts)
  if opts then
    config.extend(opts)
  end

  vim.o.termguicolors = true

  config.options.on_colors(c)

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    -- dark
    vim.g.terminal_color_0 = c.polar_night.bright
    vim.g.terminal_color_8 = c.polar_night.brightest

    -- light
    vim.g.terminal_color_7 = c.snow_storm.brighter
    vim.g.terminal_color_15 = c.snow_storm.brightest

    -- colors
    vim.g.terminal_color_1 = c.aurora.red
    vim.g.terminal_color_9 = c.aurora.red

    vim.g.terminal_color_2 = c.aurora.green
    vim.g.terminal_color_10 = c.aurora.green

    vim.g.terminal_color_3 = c.aurora.yellow
    vim.g.terminal_color_11 = c.aurora.yellow

    vim.g.terminal_color_4 = c.frost.artic_water
    vim.g.terminal_color_12 = c.frost.artic_water

    vim.g.terminal_color_5 = c.aurora.purple
    vim.g.terminal_color_13 = c.aurora.purple

    vim.g.terminal_color_6 = c.frost.ice
    vim.g.terminal_color_14 = c.frost.polar_water
  end

  utils.load(
    defaults,
    lsp,
    syntax,
    terminal,
    treesitter,
    bufferline,
    completion,
    diffview,
    filetree,
    git,
    glance,
    markview,
    mini,
    motion,
    neogit,
    notify,
    picker,
    snacks,
    ui
  )

  vim.g.colors_name = "nord"
end

nord.setup = config.setup

nord.plugins = {
  bufferline = {
    akinsho = function()
      return {
        fill = { bg = global_bg, fg = c.polar_night.light },
        background = { bg = global_bg, fg = c.polar_night.light },
        numbers = { bg = global_bg },
        close_button = { bg = global_bg },
        separator = { bg = global_bg, fg = c.polar_night.origin },
        duplicate = { bg = global_bg },
        modified = vim.tbl_extend(
          "force",
          { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
          config.options.styles.bufferline.modified
        ),
        pick = { bg = global_bg, bold = true, italic = false },
        diagnostic = { bg = global_bg },
        hint = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.6) },
        hint_diagnostic = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.6) },
        info = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.6) },
        info_diagnostic = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.6) },
        warning = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
        warning_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
        error_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
        error = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
        buffer_selected = current_hi,
        numbers_selected = current_hi,
        close_button_selected = current_hi,
        modified_selected = vim.tbl_extend(
          "force",
          { bg = c.polar_night.brighter, fg = c.aurora.yellow },
          config.options.styles.bufferline.modified
        ),
        separator_selected = { bg = c.polar_night.brighter, fg = c.polar_night.origin },
        duplicate_selected = current_hi,
        pick_selected = vim.tbl_extend("force", current_hi, { bold = true }),
        indicator_selected = { fg = c.frost.artic_water, bg = c.polar_night.brighter },
        indicator_visible = { fg = c.frost.artic_ocean, bg = c.polar_night.bright },
        diagnostic_selected = current_hi,
        hint_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        hint_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        info_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
        info_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
        warning_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
        warning_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
        error_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
        error_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
        buffer_visible = { bg = c.polar_night.bright },
        numbers_visible = { bg = c.polar_night.bright },
        close_button_visible = { bg = c.polar_night.bright },
        modified_visible = vim.tbl_extend(
          "force",
          { bg = c.polar_night.bright, fg = c.aurora.yellow },
          config.options.styles.bufferline.modified
        ),
        separator_visible = { bg = global_bg, fg = c.polar_night.origin },
        duplicate_visible = { bg = c.polar_night.bright },
        pick_visible = { bg = c.polar_night.bright, bold = true, italic = false },
        diagnostic_visible = { bg = c.polar_night.bright },
        hint_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        hint_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        info_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
        info_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
        warning_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
        warning_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
        error_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
        error_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
        tab = { fg = c.snow_storm.origin, bg = global_bg },
        tab_selected = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
        tab_separator = { fg = c.polar_night.origin, bg = global_bg },
        tab_separator_selected = { fg = c.aurora.purple, bg = c.polar_night.brighter },
        tab_close = { fg = c.snow_storm.origin, bg = global_bg },
        trunc_marker = { bg = global_bg, fg = c.polar_night.light },
      }
    end,
  },
  toggleterm = {
    make_opts = function(options)
      return vim.tbl_deep_extend("force", {}, {
        highlights = {
          FloatBorder = {
            link = "FloatBorder",
          },
        },
      }, options or {})
    end,
  },
}

return nord
