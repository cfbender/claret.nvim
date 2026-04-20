local M = {}

function M.get(colors, _)
  return {
    FlashLabel = { fg = colors.bg, bg = colors.gold_1, bold = true },
    FlashMatch = { fg = colors.rose_1, bg = colors.bg_mute },
    FlashCurrent = { fg = colors.bg, bg = colors.rose_1, bold = true },
  }
end

return M
