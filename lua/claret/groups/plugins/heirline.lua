local M = {}

function M.get(colors, _)
  return {
    HeirlineStatusLine = { fg = colors.text_2, bg = colors.bg_mute },
    HeirlineInactive = { fg = colors.text_4, bg = colors.bg_soft },
  }
end

return M
