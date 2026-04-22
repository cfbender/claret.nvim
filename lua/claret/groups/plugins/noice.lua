local M = {}

function M.get(colors, _)
  return {
    NoiceCmdline = { fg = colors.text, bg = colors.bg_soft },
    NoiceCmdlinePopup = { fg = colors.text, bg = colors.bg_soft },
    NoiceCmdlinePopupTitle = { fg = colors.text, bg = colors.bg_soft },
    NoiceCmdlinePopupBorder = { fg = colors.slate_1, bg = colors.bg_soft },
    NoiceCmdlineIcon = { fg = colors.gold_1, bg = colors.bg_soft },
    NoiceCmdlineIconSearch = { fg = colors.gold_1, bg = colors.bg_soft },
    NoiceCmdlinePopupBorderSearch = { fg = colors.slate_1, bg = colors.bg_soft },
    NoiceConfirm = { fg = colors.text, bg = colors.bg_soft },
    NoiceConfirmBorder = { fg = colors.slate_1, bg = colors.bg_soft },
    NoicePopup = { fg = colors.text, bg = colors.bg_soft },
    NoicePopupBorder = { fg = colors.slate_1, bg = colors.bg_soft },
    NoicePopupmenu = { fg = colors.text, bg = colors.bg_soft },
    NoicePopupmenuBorder = { fg = colors.slate_1, bg = colors.bg_soft },
    NoicePopupmenuSelected = { fg = colors.text, bg = colors.bg_mute },
    NoicePopupmenuMatch = { fg = colors.gold_1, bold = true },
    NoiceMini = { fg = colors.text_2, bg = colors.bg_soft },
  }
end

return M
