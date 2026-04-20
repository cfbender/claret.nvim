local M = {}

function M.get(colors, _)
  return {
    TinyInlineDiagnosticError = { fg = colors.terra_1, bg = '#2A1417' },
    TinyInlineDiagnosticWarn = { fg = colors.gold_1, bg = '#241D14' },
    TinyInlineDiagnosticInfo = { fg = colors.rose_1, bg = colors.bg_mute },
    TinyInlineDiagnosticHint = { fg = colors.sage_1, bg = '#1D2418' },
  }
end

return M
