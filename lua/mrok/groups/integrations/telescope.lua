local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
    return {
        TelescopeMatching      = { fg = c.magenta },
        TelescopeSelection     = { bg = c.bg3 },
        TelescopePromptPrefix  = { fg = c.red },
        TelescopePromptNormal  = { bg = c.bg3 },
        TelescopePromptCounter = { fg = c.gray2 },
        TelescopePromptBorder  = { fg = c.bg3, bg = c.bg3 },
        TelescopePromptTitle   = { fg = c.bg, bg = c.red, bold = true },
        TelescopeResultsBorder = { fg = c.bg2, bg = c.bg2 },
        TelescopeResultsTitle  = { fg = c.bg },
        TelescopeResultsNormal = { bg = c.bg2 },
        TelescopePreviewTitle  = { fg = c.bg, bg = c.green, bold = true },
        TelescopePreviewBorder = { fg = c.bg2, bg = c.bg2 },
        TelescopePreviewNormal = { bg = c.bg2 },
    }
end

return M
