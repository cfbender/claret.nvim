local M = {}

function M.get(colors, config)
  return {
    SpellBad = { undercurl = true, sp = colors.terra_1 },
    SpellCap = { undercurl = true, sp = colors.rose_1 },
    SpellRare = { undercurl = true, sp = colors.gold_1 },
    SpellLocal = { undercurl = true, sp = colors.sage_1 },
    MatchWord = { bg = colors.bg_mute },
    FoldColumn = { fg = colors.text_4, bg = colors.bg },
    markdownCode = { fg = colors.sage_1 },
    markdownCodeBlock = { fg = colors.sage_1 },
    markdownH1 = { fg = colors.rose_1, bold = true },
    markdownLinkText = { fg = colors.gold_1, underline = true },
    markdownItalic = { italic = config.italics.comments },
  }
end

return M
