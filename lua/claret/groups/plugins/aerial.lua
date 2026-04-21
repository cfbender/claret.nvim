local M = {}

function M.get(colors, _)
  return {
    AerialClassIcon = { fg = colors.slate_1 },
    AerialFunctionIcon = { fg = colors.gold_1 },
    AerialMethodIcon = { fg = colors.gold_2 },
    AerialPropertyIcon = { fg = colors.rose_2 },
    AerialLine = { bg = colors.bg_mute },
  }
end

return M
