local M = {}

function M.get(colors, _)
  return {
    CoverageCovered = { fg = colors.sage_1 },
    CoverageUncovered = { fg = colors.terra_1 },
    CoveragePartial = { fg = colors.gold_1 },
  }
end

return M
