local M = {}

function M.get(colors, _)
  return {
    DapBreakpoint = { fg = colors.terra_1 },
    DapStopped = { fg = colors.gold_1 },
    DapLogPoint = { fg = colors.rose_1 },
  }
end

return M
