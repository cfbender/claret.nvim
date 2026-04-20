local M = {}

function M.get(colors, config)
  return {
    RenderMarkdownH1 = { fg = colors.rose_1, bold = true },
    RenderMarkdownH2 = { fg = colors.gold_1, bold = true },
    RenderMarkdownCode = { fg = colors.sage_1 },
    RenderMarkdownBullet = { fg = colors.rose_2 },
    RenderMarkdownItalic = { italic = config.italics.comments },
  }
end

return M
