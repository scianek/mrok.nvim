local M = {}

---@type mrok.HighlightsFn
function M.get(_)
    return {
        LspInlayHint = "Comment",
    }
end

return M
