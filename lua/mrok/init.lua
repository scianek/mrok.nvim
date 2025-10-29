local M = {}

---@param hl_table mrok.HighlightsTable
local function apply_highlights(hl_table)
    for name, val in pairs(hl_table) do
        if type(val) == "string" then
            val = { link = val }
        end
        vim.api.nvim_set_hl(0, name, val)
    end
end

--- Sets up highlights for mrok
function M.load()
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "mrok"

    local colors = require("mrok.palette")

    apply_highlights(require("mrok.groups.base").get(colors))
    apply_highlights(require("mrok.groups.syntax").get(colors))
    apply_highlights(require("mrok.groups.treesitter").get(colors))
    apply_highlights(require("mrok.groups.diagnostics").get(colors))
end

return M
