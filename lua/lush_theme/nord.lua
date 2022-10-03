--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require "lush"
local hsl = lush.hsl

local p = {
    nord0darker = hsl(219, 19, 17),
    nord0dark = hsl(220, 18, 20),
    nord0 = hsl(220, 16, 22),
    nord1dark = hsl(220, 17, 25),
    nord1 = hsl(222, 16, 28),
    nord2 = hsl(220, 17, 32),
    nord3 = hsl(220, 16, 36),
    nord3light = hsl(220, 17, 46),
    nord4dark = hsl(220, 14, 61),
    nord4 = hsl(219, 28, 88),
    nord5 = hsl(218, 27, 92),
    nord6 = hsl(218, 27, 94),
    nord7 = hsl(179, 25, 65),
    nord8 = hsl(193, 43, 67),
    nord9 = hsl(210, 34, 63),
    nord10 = hsl(213, 32, 52),
    nord11darker = hsl(300, 10, 24),
    nord11dark = hsl(331, 16, 28),
    nord11 = hsl(354, 42, 56),
    nord12 = hsl(14, 51, 63),
    nord13darker = hsl(24, 3, 29),
    nord13dark = hsl(36, 11, 35),
    nord13 = hsl(40, 71, 73),
    nord14darker = hsl(186, 7, 26),
    nord14dark = hsl(142, 7, 32),
    nord14 = hsl(92, 28, 65),
    nord15 = hsl(311, 20, 63),
    none = nil,
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups
        --
        Normal { fg = p.nord4, bg = p.none }, -- Normal text
        NormalNC { fg = p.nord4, bg = p.nord0dark }, -- normal text in non-current windows
        NormalFloat { fg = p.nord4, bg = p.nord0darker }, -- Normal text in floating windows.
        FloatBorder { fg = p.nord1dark, bg = NormalFloat.bg },
        ColorColumn { fg = p.none, bg = p.nord0darker }, -- Columns set with 'colorcolumn'
        Conceal { fg = p.none, bg = nil }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor { gui = "reverse" }, -- Character under the cursor
        lCursor { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { fg = p.none, bg = p.nord1dark }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory { fg = p.nord8, bg = p.none }, -- Directory names (and other special names in listings)
        DiffAdd { fg = p.none, bg = p.nord14dark }, -- Diff mode: Added line |diff.txt|
        DiffChange { fg = p.none, bg = p.nord13dark }, -- Diff mode: Changed line |diff.txt|
        DiffDelete { fg = p.none, bg = p.nord11dark }, -- Diff mode: Deleted line |diff.txt|
        DiffText { fg = p.nord4, bg = p.nord10, gui = "bold" }, -- Diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer { fg = p.nord1, bg = p.none }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        TermCursor { Cursor }, -- Cursor in a focused terminal
        TermCursorNC { Cursor }, -- Cursor in an unfocused terminal
        ErrorMsg { fg = p.nord4, bg = p.nord11 }, -- Error messages on the command line
        VertSplit { fg = p.nord1, bg = p.nord0dark }, -- Column separating vertically split windows
        Winseparator { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        Folded { fg = p.nord3, bg = p.none }, -- Line used for closed folds
        FoldColumn { fg = p.nord3, bg = p.none }, -- 'foldcolumn'
        SignColumn { fg = p.nord1, bg = p.none }, -- Column where |signs| are displayed
        Search { fg = p.nord8, bg = p.nord0, gui = "reverse" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        IncSearch { fg = p.nord6, bg = p.nord10, gui = "underline" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch { IncSearch }, -- Used for highlighting a search pattern under the cursor
        Substitute { fg = p.nord6, bg = p.nord0, gui = "reverse" }, -- |:substitute| replacement text highlighting
        LineNr { fg = p.nord4, bg = p.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg = p.none, bg = p.nord1dark }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen { fg = p.nord7, bg = p.nord3light, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        NonText { fg = p.nord2, bg = p.none }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Pmenu { fg = p.nord4, bg = p.nord0darker }, -- Popup menu: Normal item.
        PmenuSel { fg = p.nord8, bg = p.nord3 }, -- Popup menu: Selected item.
        PmenuSbar { fg = p.nord4, bg = p.nord1dark }, -- Popup menu: Scrollbar.
        PmenuThumb { fg = p.nord8, bg = p.nord2 }, -- Popup menu: Thumb of the scrollbar.
        Question { fg = p.nord4, bg = p.none }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine { fg = p.nord0, bg = p.nord8 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        SpecialKey { fg = p.nord3, bg = p.none }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad { fg = p.nord11, bg = p.none, gui = "undercurl", sp = p.nord11 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap { fg = p.nord13, bg = p.none, gui = "undercurl", sp = p.nord13 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal { fg = p.nord5, bg = p.none, gui = "undercurl", sp = p.nord5 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare { fg = p.nord6, bg = p.none, gui = "undercurl", sp = p.nord6 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        StatusLine { fg = p.nord4, bg = p.nord1 }, -- Status line of current window
        StatusLineNC { fg = p.nord4, bg = p.nord1 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine { fg = p.nord4, bg = p.nord1 }, -- Tab pages line, not active tab page label
        TabLineFill { fg = p.nord4dark, bg = p.nord2 }, -- Tab pages line, where there are no labels
        TabLineSel { fg = p.nord4, bg = p.nord3light }, -- Tab pages line, active tab page label
        ModeMsg { fg = p.nord4, bg = p.none, gui = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea { Normal }, -- Area for messages and cmdline
        MsgSeparator { StatusLine }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg { fg = p.nord13, bg = p.none }, -- |more-prompt|
        Title { fg = p.nord4, bg = p.none }, -- Titles for output from ":set all", ":autocmd" etc.
        Visual { fg = p.none, bg = p.nord3 }, -- Visual mode selection
        VisualNOS { fg = p.none, bg = p.nord3 }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg { fg = p.nord13, bg = p.nord0, gui = "reverse" }, -- Warning messages
        Whitespace { fg = p.nord2, bg = p.none }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu { fg = p.nord1, bg = p.nord8 }, -- Current match in 'wildmenu' completion

        -- Common vim syn fg =  bg =  ax groups used for all kinds of code and markup.
        -- Commented-out  fg =  bg =  roups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Comment { fg = p.nord3light }, -- Any comment

        Constant { fg = p.nord6 }, -- (*) Any constant
        String { fg = p.nord14, gui = "italic" }, --   A string constant: "this is a string"
        Character { fg = p.nord14 }, --   A character constant: 'c', '\n'
        Number { fg = p.nord15 }, --   A number constant: 234, 0xff
        Boolean { fg = p.nord9, gui = "bold" }, --   A boolean constant: TRUE, false
        Float { fg = p.nord15 }, --   A floating point constant: 2.3e10

        Identifier { fg = p.nord4, gui = p.none }, -- (*) Any variable name
        Function { fg = p.nord8, gui = "italic" }, --   Function name (also: methods for classes)

        Statement { fg = p.nord9 }, -- (*) Any statement
        Conditional { fg = Statement.fg, gui = "italic" }, --   if, then, else, endif, switch, etc.
        Repeat { Statement }, --   for, do, while, etc.
        Label { Statement }, --   case, default, etc.
        Operator { fg = Statement.fg, gui = p.none }, --   "sizeof", "+", "*", etc.
        Keyword { fg = Statement.fg, gui = "italic" }, --   any other keyword
        Exception { Statement }, --   try, catch, throw

        PreProc { fg = p.nord9, gui = p.none }, -- (*) Generic Preprocessor
        Include { fg = p.nord9 }, --   Preprocessor #include
        Define { Include }, --   Preprocessor #define
        Macro { Include }, --   Same as Define
        PreCondit { PreProc }, --   Preprocessor #if, #else, #endif, etc.

        Type { fg = p.nord9, gui = p.none }, -- (*) int, long, char, etc.
        StorageClass { fg = p.nord9 }, --   static, register, volatile, etc.
        Structure { StorageClass }, --   struct, union, enum, etc.
        Typedef { StorageClass }, --   A typedef

        Special { fg = p.nord13 }, -- (*) Any special symbol
        SpecialChar { Special }, --   Special character in a constant
        Tag { fg = p.nord4 }, --   You can use CTRL-] on this
        Delimiter { fg = p.nord6 }, --   Character that needs attention
        SpecialComment { fg = p.nord8, gui = "italic" }, --   Special things inside a comment (e.g. '\n')
        Debug { fg = p.nord11 }, --   Debugging statements

        Underlined { fg = p.nord14, gui = "underline" }, -- Text that stands out, HTML links
        Ignore { fg = p.nord1 }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error { fg = p.nord11, bg = p.none, gui = "bold,underline" }, -- Any erroneous construct
        Todo { fg = p.nord13, bg = p.none }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        LspReferenceText { fg = p.none, bg = p.nord3 }, -- Used for highlighting "text" references
        LspReferenceRead { fg = p.none, bg = p.nord3 }, -- Used for highlighting "read" references
        LspReferenceWrite { fg = p.none, bg = p.nord3 }, -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        LspSignatureActiveParameter { Search }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
        -- lspinfo window
        LspInfoBorder { FloatBorder },

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError { fg = p.nord11, bg = p.none }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn { fg = p.nord13, bg = p.none }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo { fg = p.nord8, bg = p.none }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint { fg = p.nord10, bg = p.none }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticVirtualTextError { fg = DiagnosticError.fg, bg = DiagnosticError.bg, gui = "bold,italic" }, -- Used for "Error" diagnostic virtual text.
        DiagnosticVirtualTextWarn { fg = DiagnosticWarn.fg, bg = DiagnosticWarn.bg, gui = "bold,italic" }, -- Used for "Warn" diagnostic virtual text.
        DiagnosticVirtualTextInfo { fg = DiagnosticInfo.fg, bg = DiagnosticInfo.bg, gui = "bold,italic" }, -- Used for "Info" diagnostic virtual text.
        DiagnosticVirtualTextHint { fg = DiagnosticHint.fg, bg = DiagnosticHint.bg, gui = "bold,italic" }, -- Used for "Hint" diagnostic virtual text.
        DiagnosticUnderlineError { fg = DiagnosticError.fg, bg = DiagnosticError.bg, gui = "undercurl" }, -- Used to underline "Error" diagnostics.
        DiagnosticUnderlineWarn { fg = DiagnosticWarn.fg, bg = DiagnosticWarn.bg, gui = "undercurl" }, -- Used to underline "Warn" diagnostics.
        DiagnosticUnderlineInfo { fg = DiagnosticInfo.fg, bg = DiagnosticInfo.bg, gui = "undercurl" }, -- Used to underline "Info" diagnostics.
        DiagnosticUnderlineHint { fg = DiagnosticHint.fg, bg = DiagnosticHint.bg, gui = "undercurl" }, -- Used to underline "Hint" diagnostics.
        DiagnosticFloatingError { DiagnosticError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        DiagnosticFloatingWarn { DiagnosticWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
        DiagnosticFloatingInfo { DiagnosticInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
        DiagnosticFloatingHint { DiagnosticHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
        DiagnosticSignError { DiagnosticError }, -- Used for "Error" signs in sign column.
        DiagnosticSignWarn { DiagnosticWarn }, -- Used for "Warn" signs in sign column.
        DiagnosticSignInfo { DiagnosticInfo }, -- Used for "Info" signs in sign column.
        DiagnosticSignHint { DiagnosticHint }, -- Used for "Hint" signs in sign column.

        -- Tree-Sitter syntax groups. Most link to corresponding
        -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
        --
        -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        TSAttribute { fg = p.nord15 }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
        TSBoolean { Boolean }, -- Boolean literals: `True` and `False` in Python.
        TSCharacter { Character }, -- Character literals: `'a'` in C.
        TSCharacterSpecial { Special }, -- Special characters.
        TSComment { Comment }, -- Line comments and block comments.
        TSConditional { Conditional }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
        TSConstant { Constant }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
        TSConstBuiltin { Constant }, -- Built-in constant values: `nil` in Lua.
        TSConstMacro { Constant }, -- Constants defined by macros: `NULL` in C.
        TSConstructor { fg = p.nord9 }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
        TSDebug { Debug }, -- Debugging statements.
        TSDefine { Define }, -- Preprocessor #define statements.
        -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
        TSException { Exception }, -- Exception related keywords: `try`, `except`, `finally` in Python.
        TSField { fg = p.nord4 }, -- Object and struct fields.
        TSFloat { Float }, -- Floating-point number literals.
        TSFunction { Function }, -- Function calls and definitions.
        TSFuncBuiltin { Function }, -- Built-in functions: `print` in Lua.
        TSFuncMacro { Function }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
        TSInclude { fg = p.nord9 }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
        TSKeyword { Keyword }, -- Keywords that don't fit into other categories.
        TSKeywordFunction { Keyword }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
        TSKeywordOperator { Keyword }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
        TSKeywordReturn { Keyword }, -- Keywords like `return` and `yield`.
        TSLabel { Label }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
        TSMethod { fg = p.nord7, gui = "italic" }, -- Method calls and definitions.
        TSNamespace { fg = p.nord4, gui = "italic" }, -- Identifiers referring to modules and namespaces.
        -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
        TSNumber { Number }, -- Numeric literals that don't fit into other categories.
        TSOperator { Operator }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
        TSParameter { fg = p.nord10 }, -- Parameters of a function.
        TSParameterReference { TSParameter }, -- References to parameters of a function.
        TSPreProc { PreProc }, -- Preprocessor #if, #else, #endif, etc.
        TSProperty { fg = p.nord10, gui = "italic" }, -- Same as `TSField`.
        TSPunctDelimiter { fg = p.nord8 }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
        TSPunctBracket { TSPunctDelimiter }, -- Brackets, braces, parentheses, etc.
        TSPunctSpecial { TSPunctDelimiter }, -- Special punctuation that doesn't fit into the previous categories.
        TSRepeat { Repeat }, -- Keywords related to loops: `for`, `while`, etc.
        TSStorageClass { StorageClass }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
        TSString { String }, -- String literals.
        TSStringRegex { SpecialChar }, -- Regular expression literals.
        TSStringEscape { fg = p.nord15 }, -- Escape characters within a string: `\n`, `\t`, etc.
        TSStringSpecial { Special }, -- Strings with special meaning that don't fit into the previous categories.
        TSSymbol { fg = p.nord15 }, -- Identifiers referring to symbols or atoms.
        TSTag { Tag }, -- Tags like HTML tag names.
        TSTagAttribute { TSTag }, -- HTML tag attributes.
        TSTagDelimiter { TSTag }, -- Tag delimiters like `<` `>` `/`.
        TSText { fg = p.nord4 }, -- Non-structured text. Like text in a markup language.
        TSStrong { gui = "bold" }, -- Text to be represented in bold.
        TSEmphasis { gui = "Italic" }, -- Text to be represented with emphasis.
        TSUnderline { gui = "Underline" }, -- Text to be represented with an underline.
        TSStrike { gui = "Strikethrough" }, -- Strikethrough text.
        TSTitle { fg = p.nord9, bg = p.none, gui = "bold" }, -- Text that is part of a title.
        TSLiteral { fg = p.nord4 }, -- Literal or verbatim text.
        TSURI { fg = p.nord10 }, -- URIs like hyperlinks or email addresses.
        TSMath { Number }, -- Math environments like LaTeX's `$ ... $`
        TSTextReference { fg = p.nord15 }, -- Footnotes, text references, citations, etc.
        -- TSEnvironment        { } , -- Text environments of markup languages.
        -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
        TSNote { DiagnosticHint }, -- Text representation of an informational note.
        TSWarning { DiagnosticWarn }, -- Text representation of a warning note.
        TSDanger { DiagnosticError }, -- Text representation of a danger note.
        TSType { Type }, -- Type (and class) definitions and annotations.
        TSTypeBuiltin { Type }, -- Built-in types: `i32` in Rust.
        TSVariable { Identifier }, -- Variable names that don't fit into other categories.
        TSVariableBuiltin { Keyword }, -- Variable names defined by the language: `this` or `self` in Javascript.

        -- alpha-nvim
        AlphaButtons { fg = p.nord4, bg = p.none },
        AlphaButtonShortcuts { fg = p.nord8, bg = p.none },
        AlphaHeader { fg = p.nord9, bg = p.none },
        AlphaFooter { fg = p.nord3light, bg = p.none },

        -- diffview.nvim
        DiffviewVertSplit { fg = p.nord1, bg = p.nord13 },
        DiffviewWinSeparator { DiffviewVertSplit },

        -- gitsigns.nvim
        GitSignsCurrentLineBlame { fg = p.nord15, bg = p.none, gui = "bold,italic" },
        GitSignsAdd { fg = p.nord14, bg = p.none },
        GitSignsAddNr { fg = p.nord14, bg = p.nord1 },
        GitSignsAddLn { fg = p.none, bg = p.nord14darker },
        GitSignsChange { fg = p.nord13, bg = p.none },
        GitSignsChangeNr { fg = p.nord13, bg = p.nord1 },
        GitSignsChangeLn { fg = p.none, bg = p.nord13darker },
        GitSignsDelete { fg = p.nord11, bg = p.none },
        GitSignsDeleteNr { fg = p.nord11, bg = p.nord1 },
        GitSignsDeleteLn { fg = p.none, bg = p.nord11darker },
        GitSignsAddInline { fg = p.none, bg = p.nord14dark },
        GitSignsChangeInline { fg = p.none, bg = p.nord13dark },
        GitSignsDeleteInline { fg = p.none, bg = p.nord11dark },

        -- incline.nvim
        InclineNormal { fg = p.nord5, bg = p.nord3 },
        InclineNormalNC { InclineNormal },

        -- indent-blankline.nvim
        IndentBlanklineContextChar { fg = p.nord7, bg = p.none },
        IndentBlanklineContextStart { fg = p.none, bg = p.none, gui = "underline", sp = p.nord7 },
        IndentBlanklineSpaceCharBlankline { fg = p.nord1, bg = p.none },
        IndentBlanklineSpaceChar { fg = p.nord1, bg = p.none },
        IndentBlanklineChar { fg = p.nord1, bg = p.none },

        -- hop.nvim
        HopNextKey { fg = p.nord8, bg = p.none, gui = "bold" },
        HopNextKey1 { fg = p.nord8, bg = p.none },
        HopNextKey2 { fg = p.nord4, bg = p.none },
        HopUnmatched { fg = p.nord3, bg = p.none },

        -- mini.nvim
        MiniCursorword { Visual },
        MiniCursorwordCurrent { gui = "bold" },

        -- nvim-cmp
        CmpGhostText { fg = p.nord3light, bg = p.none, gui = "bold" },

        CmpItemMenuDefault { fg = p.nord3light, bg = p.none },

        CmpItemAbbrDefault { fg = p.nord4, bg = p.none },
        CmpItemAbbrDeprecatedDefault { fg = p.nord12, bg = p.none, gui = "strikethrough" },
        CmpItemAbbrMatchDefault { fg = p.nord10, bg = p.none, gui = "bold" },
        CmpItemAbbrMatchFuzzyDefault { CmpItemAbbrMatchDefault },

        CmpItemKindTypeParameterDefault { TSParameter },
        CmpItemKindConstructorDefault { TSConstructor },
        CmpItemKindEnumDefault { Structure },
        CmpItemKindEnumMemberDefault { Structure },
        CmpItemKindReferenceDefault { TSParameterReference },
        CmpItemKindInterfaceDefault { StorageClass },
        CmpItemKindClassDefault { StorageClass },
        CmpItemKindVariableDefault { TSVariable },
        CmpItemKindPropertyDefault { TSProperty },
        CmpItemKindOperatorDefault { TSOperator },
        CmpItemKindFunctionDefault { TSFunction },
        CmpItemKindConstantDefault { TSConstant },
        CmpItemKindSnippetDefault { fg = p.nord14, bg = p.none },
        CmpItemKindKeywordDefault { TSKeyword },
        CmpItemKindStructDefault { Structure },
        CmpItemKindModuleDefault { TSNamespace },
        CmpItemKindMethodDefault { TSMethod },
        CmpItemKindFolderDefault { Directory },
        CmpItemKindFileDefault { Directory },
        CmpItemKindValueDefault { TSKeyword },
        CmpItemKindFieldDefault { TSField },
        CmpItemKindUnitDefault { TSNumber },
        CmpItemKindTextDefault { TSText },
        CmpItemKindDefault { Normal },

        -- nvim-hlslens
        HlSearchNear { IncSearch },
        HlSearchLensNear { fg = p.nord4, bg = p.none, gui = "reverse" },
        HlSearchLens { fg = p.nord3light, bg = p.none, gui = "reverse" },
        HlSearchFloat { IncSearch },

        -- nvim-notify
        NotifyERRORTitle { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyWARNTitle { fg = DiagnosticWarn.fg, bg = FloatBorder.bg },
        NotifyINFOTitle { fg = DiagnosticInfo.fg, bg = FloatBorder.bg },
        NotifyDEBUGTitle { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyTRACETitle { fg = DiagnosticHint.fg, bg = FloatBorder.bg },
        NotifyERRORIcon { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyWARNIcon { fg = DiagnosticWarn.fg, bg = FloatBorder.bg },
        NotifyINFOIcon { fg = DiagnosticInfo.fg, bg = FloatBorder.bg },
        NotifyDEBUGIcon { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyTRACEIcon { fg = DiagnosticHint.fg, bg = FloatBorder.bg },
        NotifyERRORBorder { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyWARNBorder { fg = DiagnosticWarn.fg, bg = FloatBorder.bg },
        NotifyINFOBorder { fg = DiagnosticInfo.fg, bg = FloatBorder.bg },
        NotifyDEBUGBorder { fg = DiagnosticError.fg, bg = FloatBorder.bg },
        NotifyTRACEBorder { fg = DiagnosticHint.fg, bg = FloatBorder.bg },
        NotifyERRORBody { NormalFloat },
        NotifyWARNBody { NormalFloat },
        NotifyINFOBody { NormalFloat },
        NotifyDEBUGBody { NormalFloat },
        NotifyTRACEBody { NormalFloat },

        -- nvim-scrollbar
        ScrollBarHandle { fg = p.none, bg = p.nord2 },
        ScrollBarError { DiagnosticError },
        ScrollBarWarn { DiagnosticWarn },
        ScrollBarInfo { DiagnosticInfo },
        ScrollBarHint { DiagnosticHint },
        ScrollBarMisc { fg = p.nord4, bg = p.none },
        ScrollBarSearch { Search },

        -- nvim-tree.lua
        NvimTreeNormalNC { NormalNC },
        NvimTreeSignColumn { fg = p.nord1, bg = p.none },
        NvimTreeRootFolder { fg = p.nord8, bg = p.none, gui = "bold" },
        NvimTreeFolderIcon { fg = p.nord4, bg = p.none },
        NvimTreeFolderName { fg = p.nord10, bg = p.none },
        NvimTreeEmptyFolderName { fg = p.nord3, bg = p.none },
        NvimTreeOpenedFolderName { fg = p.nord9, bg = p.none },
        NvimTreeIndentMarker { fg = p.nord3, bg = p.none },
        NvimTreeOpenedFile { fg = p.nord9, bg = p.none },
        NvimTreeExecFile { fg = p.nord8, bg = p.none },
        NvimTreeSpecialFile { fg = p.nord9, bg = p.none, gui = "underline" },
        NvimTreeGitNew { fg = p.nord14, bg = p.none },
        NvimTreeGitDirty { fg = p.nord13, bg = p.none },
        NvimTreeImageFile { fg = p.nord15, bg = p.none },
        NvimTreeWindowPicker { fg = p.nord1, bg = p.nord8 },
        LspDiagnosticsError { DiagnosticError },
        LspDiagnosticsWarning { DiagnosticWarn },
        LspDiagnosticsHint { DiagnosticHint },
        LspDiagnosticsInformation { DiagnosticInfo },

        -- nvim-ts-rainbow
        rainbowcol1 { fg = p.nord10, bg = p.none },
        rainbowcol2 { fg = p.nord11, bg = p.none },
        rainbowcol3 { fg = p.nord13, bg = p.none },
        rainbowcol4 { fg = p.nord14, bg = p.none },
        rainbowcol5 { fg = p.nord15, bg = p.none },
        rainbowcol6 { fg = p.nord7, bg = p.none },
        rainbowcol7 { fg = p.nord4, bg = p.none },

        --nvim-windowpicker
        WindowPicker { fg = p.nord6, bg = p.nord3light, gui = "bold" },
        WindowPickerNC { WindowPicker },

        -- neo-tree.nvim
        NeoTreeNormal { Normal },
        NeoTreeNormalNC { NormalNC },
        NeoTreePreview { fg = p.nord4, bg = p.nord3light },
        NeoTreeFloatBorder { fg = p.nord2, bg = p.nord0 },
        NeoTreeFloatTitle { fg = p.nord8, bg = p.nord2, gui = "bold" },

        NeoTreeTabActive { fg = p.nord4, bg = p.nord3light },
        NeoTreeTabInactive { fg = p.nord4, bg = p.nord2 },
        NeoTreeTabBarBackground { StatusLine },
        NeoTreeTabSeparatorActive { fg = p.nord3, bg = p.nord3light },
        NeoTreeTabSeparatorInactive { fg = p.nord1, bg = p.nord2 },

        NeoTreeRootName { fg = p.nord6, bg = p.none, gui = "bold,italic" },
        NeoTreeIndentMarker { FoldColumn },
        NeoTreeFileNameOpened { gui = "bold,nocombine" },
        NeoTreeBufferNumber { fg = p.nord6, bg = p.none },
        NeoTreeDotfile { fg = p.nord3light, bg = p.none },
        NeoTreeSymbolicLinkTarget { fg = p.nord7, bg = p.none, gui = "bold" },

        NeoTreeMessage { fg = p.nord15, bg = p.none },
        NeoTreeDimText { fg = p.nord3, bg = p.none },
        NeoTreeFadeText1 { NeoTreeDotfile },
        NeoTreeFadeText2 { NeoTreeDimText },

        NeoTreeModified { GitSignsChange },
        NeoTreeGitAdded { GitSignsAdd },
        NeoTreeGitModified { GitSignsChange },
        NeoTreeGitDeleted { GitSignsDelete },
        NeoTreeGitRenamed { NeoTreeGitModified },
        NeoTreeGitUntracked { fg = p.nord10, bg = p.none },
        NeoTreeGitIgnored { NeoTreeDotfile },
        NeoTreeGitUnstaged { NeoTreeGitModified },
        NeoTreeGitStaged { NeoTreeGitAdded },
        NeoTreeGitConflict { fg = p.nord12, bg = p.none },

        -- quickscope.lua
        QuickScopePrimary { fg = p.nord13, bg = p.nord0, gui = "underline,nocombine" },
        QuickScopeSecondary { fg = p.nord15, bg = p.nord0, gui = "bold,nocombine" },

        -- satellite.nvim
        ScrollView { fg = p.none, bg = p.nord3 },
        SearchSV { fg = p.nord8, bg = p.none },

        -- telescope.nvim
        TelescopePromptPrefix { fg = p.nord4, bg = p.none, gui = "bold" },
        TelescopePromptCounter { fg = p.nord7, bg = p.none, gui = "bold" },

        TelescopeNormal { fg = p.nord4, bg = p.nord0darker },
        TelescopeResultsNormal { fg = p.nord9, bg = p.none },
        TelescopePreviewNormal { fg = p.nord4, bg = p.nord0 },
        TelescopePromptNormal { fg = p.nord6, bg = p.nord0 },

        TelescopeResultsTitle { fg = p.nord8, bg = p.nord2, gui = "bold" },
        TelescopePreviewTitle { fg = p.nord9, bg = p.nord2, gui = "bold" },
        TelescopePromptTitle { fg = p.nord4, bg = p.nord2, gui = "bold" },

        TelescopeResultsBorder { fg = p.nord1dark, bg = p.none },
        TelescopePreviewBorder { fg = p.nord1dark, bg = p.nord0 },
        TelescopePromptBorder { fg = p.nord1dark, bg = p.nord0 },

        TelescopeMultiSelection { fg = p.nord6, bg = p.nord2 },
        TelescopeMultiIcon { fg = p.nord6, bg = p.nord2 },
        TelescopeSelectionCaret { fg = p.nord8, bg = p.nord1 },
        TelescopeSelection { TelescopeSelectionCaret },
        TelescopeMatching { fg = p.nord6, bg = p.none },

        -- todo-comments.nvim
        TodoBgFIX { fg = p.nord0dark, bg = p.nord11, gui = "bold" },
        TodoFgFIX { DiagnosticError },
        TodoSignFIX { DiagnosticError },
        TodoBgNOTE { fg = p.nord0dark, bg = p.nord10, gui = "bold" },
        TodoFgNOTE { DiagnosticHint },
        TodoSignNOTE { DiagnosticHint },
        TodoBgWARN { fg = p.nord0dark, bg = p.nord13, gui = "bold" },
        TodoFgWARN { DiagnosticWarn },
        TodoSignWARN { DiagnosticWarn },
        TodoBgPERF { fg = p.nord0dark, bg = p.nord14, gui = "bold" },
        TodoFgPERF { fg = p.nord14, bg = p.none },
        TodoSignPERF { fg = p.nord14, bg = p.none },
        TodoBgTODO { fg = p.nord0dark, bg = p.nord8, gui = "bold" },
        TodoFgTODO { DiagnosticInfo },
        TodoSignTODO { DiagnosticInfo },
        TodoBgHACK { fg = p.nord0dark, bg = p.nord13, gui = "bold" },
        TodoFgHACK { DiagnosticWarn },
        TodoSignHACK { DiagnosticWarn },

        -- vim-illuminate
        IlluminatedWordText { Visual },
        IlluminatedWordRead { Visual },
        IlluminatedWordWrite { Visual },

        -- which-key.nvim
        WhichKey { fg = p.nord4, bg = p.none, gui = "bold" },
        WhichKeyBorder { FloatBorder },
        WhichKeyGroup { fg = p.nord10, bg = p.none, gui = "bold" },
        WhichKeyDesc { fg = p.nord9, bg = p.none },
        WhichKeySeperator { fg = p.nord3, bg = p.none },
        WhichKeyValue { Comment },
        WhichKeyFloat { NormalFloat },

        -- hydra.nvim
        HydraHint { NormalFloat },
        HydraAmaranth { fg = p.nord12, bg = p.none },
        HydraTeal { fg = p.nord7, bg = p.none },
        HydraPink { fg = p.nord15, bg = p.none },
        HydraBlue { fg = p.nord10, bg = p.none },
        HydraRed { fg = p.nord11, bg = p.none },
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
