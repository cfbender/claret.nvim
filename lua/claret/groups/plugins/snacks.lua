local M = {}

function M.get(colors, _)
  return {
    SnacksDashboardHeader = { fg = colors.rose_1, bold = true },
    SnacksDashboardDesc = { fg = colors.text_2 },
    SnacksDashboardKey = { fg = colors.gold_1 },
    SnacksPickerTitle = { fg = colors.rose_1, bold = true },
    SnacksPickerBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    SnacksInputBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    SnacksNotifierBorderInfo = { fg = colors.rose_1, bg = colors.bg_soft },
    SnacksNotifierBorderWarn = { fg = colors.gold_1, bg = colors.bg_soft },
    SnacksNotifierBorderError = { fg = colors.terra_1, bg = colors.bg_soft },
    SnacksIndent = { fg = colors.divider },
    SnacksIndentScope = { fg = colors.rose_3 },
    SnacksZenIcon = { fg = colors.sage_1 },
  }
end

return M
