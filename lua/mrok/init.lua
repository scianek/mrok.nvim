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

---@param colors mrok.Palette
local function load_integrations(colors)
    local integrations = require("mrok.groups.integrations").integrations_table
    local plugin_map = {}

    if package.loaded["lazy"] then
        for _, p in ipairs(require("lazy").plugins()) do
            if p.name then
                plugin_map[p.name] = p
            end
        end
    else
        for name, _ in pairs(integrations) do
            plugin_map[name] = { opts = true }
        end
    end

    for plugin_name, module_name in pairs(integrations) do
        local p = plugin_map[plugin_name]
        if p and p.opts ~= false then
            apply_highlights(
                require("mrok.groups.integrations." .. module_name).get(colors)
            )
        end
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
    apply_highlights(require("mrok.groups.lsp").get(colors))

    load_integrations(colors)
end

return M
