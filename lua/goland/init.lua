-- lua/goland/init.lua
local M = {}

function M.setup()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "goland"

    -- Load and apply highlights
    local groups = require("goland.colors").setup()

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
