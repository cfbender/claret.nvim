local M = {}

function M.get(colors, _)
  return {
    ToggleTerm = { fg = colors.text, bg = colors.bg },
    ToggleTermBorder = { fg = colors.rose_3, bg = colors.bg },
  }
end

return M
