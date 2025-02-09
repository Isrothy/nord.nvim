local ui = {}

local c = require("nord.colors").palette

function ui.highlights()
  return {
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
end

return ui
