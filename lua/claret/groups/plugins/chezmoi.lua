local M = {}

function M.get(colors, _)
  return {
    ChezmoiSourcePath = { fg = colors.text_2 },
    ChezmoiTargetPath = { fg = colors.gold_1 },
    ChezmoiStateModified = { fg = colors.rose_1 },
  }
end

return M
