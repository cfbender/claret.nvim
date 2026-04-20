local M = {}

function M.get(colors, _)
  return {
    DiffAdd = { fg = colors.sage_1, bg = colors.bg == '#180E10' and '#1D2418' or '#EAF1E2' },
    DiffChange = { fg = colors.gold_2, bg = colors.bg == '#180E10' and '#241D14' or '#F2E8DA' },
    DiffDelete = { fg = colors.terra_2, bg = colors.bg == '#180E10' and '#2A1417' or '#F5E3E1' },
    DiffText = {
      fg = colors.gold_1,
      bg = colors.bg == '#180E10' and '#332614' or '#E9D6BE',
      bold = true,
    },
  }
end

return M
