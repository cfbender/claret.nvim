local M = {}

function M.get(colors, _)
  return {
    GitSignsAdd = { fg = colors.sage_1 },
    GitSignsChange = { fg = colors.gold_1 },
    GitSignsDelete = { fg = colors.terra_1 },
  }
end

return M
