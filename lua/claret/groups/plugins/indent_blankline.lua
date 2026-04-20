local M = {}

function M.get(colors, _)
  return {
    IblIndent = { fg = colors.divider },
    IblScope = { fg = colors.rose_3 },
  }
end

return M
