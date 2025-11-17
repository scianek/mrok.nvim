local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
    return {
        TreesitterContext = { bg = c.bg2 },
    }
end

return M
