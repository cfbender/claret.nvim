local M = {}

function M.get(colors, _)
  return {
    SidekickTitle = { fg = colors.rose_1, bold = true },
    SidekickBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    SidekickValue = { fg = colors.text },
  }
end

return M
