local M = {}

function M.get(colors, _)
  return {
    ClaretLualineNormalA = { fg = colors.bg, bg = colors.rose_1, bold = true },
    ClaretLualineNormalB = { fg = colors.text, bg = colors.bg_mute },
    ClaretLualineNormalC = { fg = colors.text_2, bg = colors.bg_soft },
    ClaretLualineInsertA = { fg = colors.bg, bg = colors.gold_1, bold = true },
    ClaretLualineVisualA = { fg = colors.bg, bg = colors.sage_1, bold = true },
    ClaretLualineReplaceA = { fg = colors.bg, bg = colors.terra_1, bold = true },
    ClaretLualineInactiveA = { fg = colors.text_4, bg = colors.bg_soft },
    ClaretLualineInactiveB = { fg = colors.text_4, bg = colors.bg_soft },
    ClaretLualineInactiveC = { fg = colors.text_4, bg = colors.bg_soft },
  }
end

function M.theme(colors, _)
  return {
    normal = {
      a = { fg = colors.bg, bg = colors.rose_1, gui = 'bold' },
      b = { fg = colors.text, bg = colors.bg_mute },
      c = { fg = colors.text_2, bg = colors.bg_soft },
    },
    insert = {
      a = { fg = colors.bg, bg = colors.gold_1, gui = 'bold' },
    },
    visual = {
      a = { fg = colors.bg, bg = colors.sage_1, gui = 'bold' },
    },
    replace = {
      a = { fg = colors.bg, bg = colors.terra_1, gui = 'bold' },
    },
    inactive = {
      a = { fg = colors.text_4, bg = colors.bg_soft },
      b = { fg = colors.text_4, bg = colors.bg_soft },
      c = { fg = colors.text_4, bg = colors.bg_soft },
    },
  }
end

return M
