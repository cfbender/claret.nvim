local M = {}

function M.get(colors, _)
  return {
    RainbowDelimiterRed = { fg = colors.rose_1 },
    RainbowDelimiterYellow = { fg = colors.gold_1 },
    RainbowDelimiterBlue = { fg = colors.type_1 },
    RainbowDelimiterOrange = { fg = colors.gold_2 },
    RainbowDelimiterGreen = { fg = colors.sage_1 },
    RainbowDelimiterViolet = { fg = colors.rose_2 },
    RainbowDelimiterCyan = { fg = colors.sage_2 },
  }
end

return M
