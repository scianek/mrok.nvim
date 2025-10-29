local M = {}

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
    return {
        DiagnosticError          = { fg = c.red, bg = c.bg_red },
        DiagnosticWarn           = { fg = c.orange, bg = c.bg_orange },
        DiagnosticInfo           = { fg = c.blue, bg = c.bg_blue },
        DiagnosticHint           = { fg = c.cyan, bg = c.bg_cyan },
        DiagnosticOK             = { fg = c.green, bg = c.bg_green },

        DiagnosticSignError      = { fg = c.red },
        DiagnosticSignWarn       = { fg = c.orange },
        DiagnosticSignInfo       = { fg = c.blue },
        DiagnosticSignHint       = { fg = c.cyan },
        DiagnosticSignOK         = { fg = c.green },

        DiagnosticUnderlineError = { undercurl = true, sp = c.red },
        DiagnosticUnderlineWarn  = { undercurl = true, sp = c.orange },
        DiagnosticUnderlineInfo  = { undercurl = true, sp = c.blue },
        DiagnosticUnderlineHint  = { undercurl = true, sp = c.cyan },
        DiagnosticUnderlineOK    = { undercurl = true, sp = c.green },
    }
end

return M
