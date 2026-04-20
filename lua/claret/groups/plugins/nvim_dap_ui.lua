local M = {}

function M.get(colors, _)
  return {
    DapUIWatchesValue = { fg = colors.gold_1 },
    DapUIType = { fg = colors.type_1 },
    DapUIVariable = { fg = colors.text },
  }
end

return M
