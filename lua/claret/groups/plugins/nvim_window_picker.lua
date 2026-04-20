local M = {}

function M.get(colors, _)
  return {
    WindowPickerStatusLine = { fg = colors.bg, bg = colors.gold_1, bold = true },
    WindowPickerStatusLineNC = { fg = colors.bg, bg = colors.rose_1, bold = true },
  }
end

return M
