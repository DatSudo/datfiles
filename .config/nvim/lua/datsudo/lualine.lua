local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

--[[ local custome_gruvbox = require"lualine.themes.gruvbox" ]]
--[[]]
--[[ custome_gruvbox.normal.c.bg = "#1d2021" ]]
--[[ custome_gruvbox.visual.c.bg = "#1d2021" ]]
--[[ custome_gruvbox.insert.c.bg = "#1d2021" ]]

lualine.setup {
    options = {
        theme = "ayu_dark",
        section_separators = '',
        component_separators = ''
    },
}

