local M = {}

function M.get(colors, config)
  return {
    ['@comment'] = { link = 'Comment' },
    ['@keyword'] = { fg = colors.rose_1 },
    ['@keyword.return'] = { fg = colors.rose_1, italic = config.italics.keywords },
    ['@keyword.exception'] = { fg = colors.rose_1, italic = config.italics.keywords },
    ['@function'] = { fg = colors.gold_1 },
    ['@function.method'] = { fg = colors.gold_2 },
    ['@constructor'] = { fg = colors.slate_1 },
    ['@type'] = { fg = colors.slate_1 },
    ['@type.builtin'] = { fg = colors.slate_1 },
    ['@property'] = { fg = colors.rose_2 },
    ['@variable'] = { fg = colors.text },
    ['@variable.parameter'] = { fg = colors.text, italic = config.italics.parameters },
    ['@string'] = { fg = colors.sage_1 },
    ['@string.escape'] = { fg = colors.slate_1 },
    ['@string.special'] = { fg = colors.slate_1 },
    ['@number'] = { fg = colors.gold_1 },
    ['@boolean'] = { fg = colors.gold_1 },
    ['@constant'] = { fg = colors.slate_1 },
    ['@constant.builtin'] = { fg = colors.gold_1 },
    ['@operator'] = { fg = colors.text_3 },
    ['@punctuation.delimiter'] = { fg = colors.text_3 },
    ['@punctuation.bracket'] = { fg = colors.text_3 },
    ['@tag'] = { fg = colors.slate_1 },
    ['@tag.attribute'] = { fg = colors.slate_2 },
    ['@module'] = { fg = colors.text_2 },
    ['@namespace'] = { fg = colors.text_2 },
  }
end

return M
