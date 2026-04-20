local M = {}

function M.get(colors, _)
  return {
    GrappleHandle = { fg = colors.rose_1, bold = true },
    GrappleName = { fg = colors.text },
  }
end

return M
