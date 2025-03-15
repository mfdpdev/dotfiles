local colors = {
  yellow   = '#e5c76b',
  green    = '#8ccf7e',
  blue   = '#67b0e8',
  cyan   = '#6cbfbf',
  fg  = '#dadada',
  red    = '#e57474',
  magenta = '#c47fd5',
  grey   = '#b3b9b8',
  bg   = '#141b1e',
}

-- Set highlights
local function set_highlight(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Mengatur highlight untuk berbagai grup
set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
set_highlight("Comment", { fg = colors.grey, italic = true })
set_highlight("Identifier", { fg = colors.blue })
set_highlight("String", { fg = colors.green })
set_highlight("Function", { fg = colors.cyan })
set_highlight("Keyword", { fg = colors.magenta, bold = true })
set_highlight("Type", { fg = colors.yellow })
set_highlight("Number", { fg = colors.yellow })
set_highlight("Boolean", { fg = colors.red })
set_highlight("Operator", { fg = colors.fg })
set_highlight("Error", { fg = colors.red, bg = colors.bg, bold = true })
set_highlight("Warning", { fg = colors.yellow, bg = colors.bg, bold = true })
set_highlight("Todo", { fg = colors.green, bg = colors.bg, bold = true })

set_highlight('WhichKeyNormal', { fg = colors.fg, bg = colors.bg })
set_highlight('WhichKeyBorder', { fg = colors.fg, bg = colors.bg })
