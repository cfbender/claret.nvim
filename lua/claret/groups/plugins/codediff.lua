local M = {}

function M.get(colors, _)
  return {
    CodeDiffAdd = { fg = colors.sage_1, bg = '#1D2418' },
    CodeDiffDelete = { fg = colors.terra_1, bg = '#2A1417' },
    CodeDiffChange = { fg = colors.gold_1, bg = '#241D14' },
    CodeDiffText = { fg = colors.gold_1, bg = '#332614', bold = true },
  }
end

return M
