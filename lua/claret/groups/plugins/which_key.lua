local M = {}

function M.get(colors, _)
  return {
    WhichKey = { fg = colors.rose_1 },
    WhichKeyGroup = { fg = colors.gold_1 },
    WhichKeyDesc = { fg = colors.text },
    WhichKeySeparator = { fg = colors.text_4 },
    WhichKeyBorder = { fg = colors.rose_3, bg = colors.bg_soft },
  }
end

return M
