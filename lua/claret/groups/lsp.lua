local M = {}

function M.get(colors)
  return {
    DiagnosticError = { fg = colors.terra_1 },
    DiagnosticWarn = { fg = colors.gold_1 },
    DiagnosticInfo = { fg = colors.rose_1 },
    DiagnosticHint = { fg = colors.sage_1 },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.terra_1 },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.gold_1 },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.rose_1 },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.sage_1 },
    ['@lsp.type.class'] = { fg = colors.type_1 },
    ['@lsp.type.decorator'] = { fg = colors.gold_1 },
    ['@lsp.type.enum'] = { fg = colors.type_1 },
    ['@lsp.type.enumMember'] = { fg = colors.type_1 },
    ['@lsp.type.function'] = { fg = colors.gold_1 },
    ['@lsp.type.keyword'] = { fg = colors.rose_1 },
    ['@lsp.type.method'] = { fg = colors.gold_2 },
    ['@lsp.type.namespace'] = { fg = colors.text_2 },
    ['@lsp.type.parameter'] = { fg = colors.text, italic = true },
    ['@lsp.type.property'] = { fg = colors.rose_2 },
    ['@lsp.type.string'] = { fg = colors.sage_1 },
    ['@lsp.type.type'] = { fg = colors.type_1 },
    ['@lsp.type.variable'] = { fg = colors.text },
  }
end

return M
