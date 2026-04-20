local M = {}

function M.get(colors, _)
  return {
    NoiceCmdlinePopup = { fg = colors.text, bg = colors.bg_soft },
    NoiceCmdlinePopupBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    NoiceConfirmBorder = { fg = colors.gold_1, bg = colors.bg_soft },
    NoiceMini = { fg = colors.text_2, bg = colors.bg_soft },
  }
end

return M
