local M = {}

-- ===== BASE30 (UI COLORS) =====
M.base_30 = {
    white = "#ECE9FF",
    darker_black = "#04040A",
    black = "#0B0A12", -- main bg
    black2 = "#141322",

    one_bg = "#1C1B2F",
    one_bg2 = "#24243A",
    one_bg3 = "#2D2C45",

    grey = "#3A3955",
    grey_fg = "#45446A",
    grey_fg2 = "#504F78",
    light_grey = "#5C5B85",

    -- MULTICOLOR ACCENTS
    red = "#F26E75",
    baby_pink = "#FF9AD5",
    pink = "#FF8ADF",

    line = "#24243A",

    green = "#9CF5BF",
    vibrant_green = "#B4FFCF",

    blue = "#89B4FF",
    nord_blue = "#98C2FF",

    yellow = "#F8E59F",
    sun = "#FFEFBA",

    -- Lavender group (main accent)
    purple = "#C7A1FF",
    dark_purple = "#A583FF",

    teal = "#6FEAD8",
    orange = "#FFB08A",
    cyan = "#8DE7FF",

    statusline_bg = "#141322",
    lightbg = "#24243A",
    pmenu_bg = "#A583FF",
    folder_bg = "#B8B4E5",
}

-- ===== BASE16 (SYNTAX COLORS) =====
M.base_16 = {
    base00 = "#0B0A12",
    base01 = "#1C1B2F",
    base02 = "#24243A",
    base03 = "#2D2C45",
    base04 = "#3A3955",
    base05 = "#E6E3FF", -- text
    base06 = "#F1EEFF",
    base07 = "#FFFFFF",

    -- MULTICOLOR SYNTAX
    base08 = "#FF8ADF", -- variables, tags
    base09 = "#FFB08A", -- numbers
    base0A = "#F8E59F", -- constants/macros
    base0B = "#9CF5BF", -- strings
    base0C = "#8DE7FF", -- special/calls
    base0D = "#89B4FF", -- functions
    base0E = "#C7A1FF", -- keywords
    base0F = "#FF9AD5", -- special keywords/operators
}

-- ===== TREESITTER TOUCHUPS =====
M.polish_hl = {
    treesitter = {
        ["@function"] = { fg = M.base_16.base0D, bold = true },
        ["@keyword"] = { fg = M.base_16.base0E, bold = true },
        ["@string"] = { fg = M.base_16.base0B },
        ["@number"] = { fg = M.base_16.base09 },
        ["@constant"] = { fg = M.base_16.base0A },
        ["@constructor"] = { fg = M.base_30.teal },
        ["@variable.parameter"] = { fg = M.base_16.base0F },
    },
}

-- inherit extras
M = require("base46").override_theme(M, "ayu_dark")
M.type = "dark"

return M
