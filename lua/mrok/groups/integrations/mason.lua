local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
    return {
        MasonHighlight          = { fg = c.blue },
        MasonMuted              = { fg = c.gray2 },
        MasonMutedBlock         = { fg = c.gray2, bg = c.bg3 },
        MasonMutedBlockBold     = { fg = c.gray2, bold = true },
        MasonHeader             = { fg = c.bg, bg = c.red, bold = true, italic = true },
        MasonLink               = { fg = c.blue },
        MasonHighlightBlock     = { fg = c.bg, bg = c.blue },
        MasonHighlightBlockBold = { fg = c.bg, bg = c.blue, bold = true, italic = true },
    }
end

return M
