local M = {}

function M.get(colors, _)
  return {
    NvimHighlightColorsFg = { fg = colors.text },
    NvimHighlightColorsBg = { bg = colors.bg_soft },
  }
end

return M
