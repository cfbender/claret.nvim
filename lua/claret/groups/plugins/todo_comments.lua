local M = {}

function M.get(colors, _)
  return {
    TodoFgTODO = { fg = colors.gold_1, bold = true },
    TodoBgTODO = { fg = colors.bg, bg = colors.gold_1, bold = true },
    TodoFgNOTE = { fg = colors.rose_1, bold = true },
    TodoFgFIX = { fg = colors.terra_1, bold = true },
  }
end

return M
