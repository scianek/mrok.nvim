local M = {}

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
    return {
        Added          = { fg = c.green, bg = c.bg_green },
        Boolean        = { fg = c.magenta },
        Changed        = { fg = c.magenta, bg = c.bg_magenta },
        Character      = { fg = c.blue },
        Comment        = { fg = c.gray2, italic = true },
        Conditional    = { fg = c.magenta },
        Constant       = { fg = c.red },
        Debug          = { fg = c.cyan },
        Define         = { fg = c.cyan },
        Delimiter      = { fg = c.cyan },
        Error          = { fg = c.red },
        Exception      = { fg = c.magenta },
        Float          = { fg = c.red },
        Function       = { fg = c.blue },
        Identifier     = { fg = c.fg },
        Include        = { fg = c.magenta },
        Keyword        = { fg = c.magenta, italic = true },
        Label          = { fg = c.magenta },
        Macro          = { fg = c.cyan },
        Number         = { fg = c.red },
        Operator       = { fg = c.cyan },
        PreProc        = { fg = c.blue },
        Removed        = { fg = c.red, bg = c.bg_red },
        Repeat         = { fg = c.magenta },
        Special        = { fg = c.magenta },
        SpecialChar    = { fg = c.magenta },
        SpecialComment = { fg = c.red },
        Statement      = { fg = c.magenta },
        StorageClass   = { fg = c.magenta },
        String         = { fg = c.green },
        Structure      = { fg = c.magenta },
        Tag            = { fg = c.red },
        Todo           = { fg = c.blue },
        Type           = { fg = c.orange },
        TypeDef        = { fg = c.orange },
        Punctuation    = { fg = c.cyan },
        Variable       = { fg = c.fg },
    }
end

return M
