local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type mrok.HighlightsFn
function M.get(c)
    -- stylua: ignore
	return {
		GitSignsAdd    = { fg = c.green },
		GitSignsChange = { fg = c.magenta },
		GitSignsDelete = { fg = c.red },
	}
end

return M
