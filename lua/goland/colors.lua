-- lua/goland/colors.lua
local M = {}

M.colors = {
    -- Core colors from ICLS
    bg = "#1e1f22",           -- TEXT background
    fg = "#bcbec4",           -- TEXT foreground
    cursor_line = "#26282e",  -- CARET_ROW_COLOR
    line_nr = "#4b5059",      -- LINE_NUMBERS_COLOR
    line_nr_cursor = "#a1a3ab", -- LINE_NUMBER_ON_CARET_ROW_COLOR

    -- Syntax colors from ICLS attributes
    keyword = "#cf8e6d",      -- DEFAULT_KEYWORD
    function_name = "#56a8f5", -- DEFAULT_FUNCTION_DECLARATION
    method = "#57aaf7",       -- DEFAULT_INSTANCE_METHOD
    string = "#6aab73",       -- DEFAULT_STRING
    number = "#2aacb8",       -- DEFAULT_NUMBER
    comment = "#7a7e85",      -- DEFAULT_BLOCK_COMMENT
    constant = "#c77dbb",     -- DEFAULT_CONSTANT (with FONT_TYPE 2)
    static = "#c77dbb",       -- DEFAULT_STATIC_FIELD (with FONT_TYPE 2)
    operator = "#bcbec4",     -- DEFAULT_OPERATION_SIGN
    identifier = "#bcbec4",   -- DEFAULT_IDENTIFIER
    type = "#bcbec4",        -- DEFAULT_CLASS_REFERENCE
    doc_comment = "#5f826b",  -- DEFAULT_DOC_COMMENT
}

function M.setup()
    local c = M.colors

    return {
        -- Editor
        Normal = { fg = c.fg, bg = c.bg },
        CursorLine = { bg = c.cursor_line },
        LineNr = { fg = c.line_nr },
        CursorLineNr = { fg = c.line_nr_cursor },
        SignColumn = { bg = c.bg },

        -- Syntax base
        Comment = { fg = c.comment },
        String = { fg = c.string },
        Character = { fg = c.string },
        Number = { fg = c.number },
        Boolean = { fg = c.keyword },
        Float = { fg = c.number },
        Identifier = { fg = c.identifier },
        Function = { fg = c.function_name },
        Constant = { fg = c.constant },
        Statement = { fg = c.keyword },
        Keyword = { fg = c.keyword },
        Type = { fg = c.keyword },
        Special = { fg = c.fg },
        SpecialComment = { fg = c.comment },
        PreProc = { fg = c.keyword },
        Todo = { fg = "#8bb33d", bold = true },
        Error = { fg = "#f75464" },

        -- Go specific
        goPackage = { fg = c.keyword },
        goImport = { fg = c.keyword },
        goVar = { fg = c.keyword },
        goType = { fg = c.keyword },
        goTypeName = { fg = c.type },
        goBuiltin = { fg = c.keyword },
        goField = { fg = c.identifier },
        goFunction = { fg = c.function_name },
        goMethod = { fg = c.method },
        goString = { fg = c.string },
        goFormatSpecifier = { fg = c.string },
        goComment = { fg = c.comment },

        -- TreeSitter
        ["@keyword"] = { fg = c.keyword },
        ["@type"] = { fg = c.type },
        ["@type.builtin"] = { fg = c.keyword },
        ["@type.definition"] = { fg = c.keyword },
        ["@type.qualifier"] = { fg = c.keyword },
        ["@string"] = { fg = c.string },
        ["@string.escape"] = { fg = c.keyword },
        ["@number"] = { fg = c.number },
        ["@function"] = { fg = c.function_name },
        ["@function.builtin"] = { fg = c.function_name },
        ["@function.call"] = { fg = c.function_name },
        ["@method"] = { fg = c.method },
        ["@field"] = { fg = c.identifier },
        ["@property"] = { fg = c.identifier },
        ["@variable"] = { fg = c.identifier },
        ["@variable.builtin"] = { fg = c.identifier },
        ["@constant"] = { fg = c.constant },
        ["@constant.builtin"] = { fg = c.constant },
        ["@namespace"] = { fg = c.identifier },
        ["@symbol"] = { fg = c.identifier },
        ["@text"] = { fg = c.fg },
        ["@comment"] = { fg = c.comment },
        ["@operator"] = { fg = c.operator },

        -- LSP semantic tokens
        ["@lsp.type.namespace"] = { fg = c.identifier },
        ["@lsp.type.type"] = { fg = c.type },
        ["@lsp.type.class"] = { fg = c.type },
        ["@lsp.type.enum"] = { fg = c.type },
        ["@lsp.type.interface"] = { fg = c.type },
        ["@lsp.type.struct"] = { fg = c.type },
        ["@lsp.type.parameter"] = { fg = c.identifier },
        ["@lsp.type.variable"] = { fg = c.identifier },
        ["@lsp.type.property"] = { fg = c.identifier },
        ["@lsp.type.enumMember"] = { fg = c.constant },
        ["@lsp.type.function"] = { fg = c.function_name },
        ["@lsp.type.method"] = { fg = c.method },
        ["@lsp.type.macro"] = { fg = c.keyword },
        ["@lsp.type.keyword"] = { fg = c.keyword },
    }
end

return M
