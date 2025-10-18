---A mapping between highlight group names and their definitions
---The value can either be a table of highlight attributes or a string linking to another group
---@alias mrok.HighlightsTable table<string, vim.api.keyset.highlight|string>

---A function that generates a HighlightsTable given a Palette
---@alias mrok.HighlightsFn fun(colors: mrok.Palette): mrok.HighlightsTable
