local M = {}

function M.get(colors, _)
  return {
    BlinkCmpMenu = { fg = colors.text_2, bg = colors.bg_soft },
    BlinkCmpMenuBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    BlinkCmpLabel = { fg = colors.text },
    BlinkCmpLabelMatch = { fg = colors.rose_1, bold = true },
    BlinkCmpKindFunction = { fg = colors.gold_1 },
    BlinkCmpKindMethod = { fg = colors.gold_2 },
    BlinkCmpKindClass = { fg = colors.slate_1 },
    BlinkCmpKindVariable = { fg = colors.text },
  }
end

return M
