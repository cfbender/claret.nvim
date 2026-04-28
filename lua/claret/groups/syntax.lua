local M = {}

function M.get(colors, config)
  return {
    Comment = { fg = colors.text_4, italic = config.italics.comments },
    Constant = { fg = colors.slate_1 },
    String = { fg = colors.sage_1 },
    Character = { fg = colors.sage_1 },
    Number = { fg = colors.gold_1 },
    Boolean = { fg = colors.gold_1 },
    Float = { fg = colors.gold_1 },
    Identifier = { fg = colors.text },
    Function = { fg = colors.gold_1 },
    Statement = { fg = colors.rose_1 },
    Conditional = { fg = colors.rose_1 },
    Repeat = { fg = colors.rose_1 },
    Label = { fg = colors.rose_1 },
    Operator = { fg = colors.text_2 },
    Keyword = { fg = colors.rose_1, italic = config.italics.keywords },
    Exception = { fg = colors.rose_1, italic = config.italics.keywords },
    PreProc = { fg = colors.gold_1 },
    Type = { fg = colors.slate_1 },
    Special = { fg = colors.slate_1 },
    Underlined = { underline = true },
  }
end

return M
