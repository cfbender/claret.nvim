local M = {}

local function maybe_bg(config, color)
  return config.transparent and 'NONE' or color
end

function M.get(colors, config)
  local bg = maybe_bg(config, colors.bg)

  return {
    Normal = { fg = colors.text, bg = bg },
    NormalFloat = { fg = colors.text, bg = colors.bg_soft },
    FloatBorder = { fg = colors.rose_3, bg = colors.bg_soft },
    StatusLine = { fg = colors.text_2, bg = colors.bg_mute },
    StatusLineNC = { fg = colors.text_4, bg = colors.bg_soft },
    WinSeparator = { fg = colors.divider },
    CursorLine = { bg = colors.bg_mute },
    CursorLineNr = { fg = colors.gold_1, bold = true },
    LineNr = { fg = colors.text_4 },
    SignColumn = { bg = bg },
    ColorColumn = { bg = colors.bg_mute },
    Pmenu = { fg = colors.text_2, bg = colors.bg_soft },
    PmenuSel = { fg = colors.rose_1, bg = colors.bg_mute, bold = true },
    PmenuSbar = { bg = colors.bg_mute },
    PmenuThumb = { bg = colors.divider },
    TabLine = { fg = colors.text_3, bg = colors.bg_soft },
    TabLineSel = { fg = colors.rose_1, bg = bg },
    Title = { fg = colors.rose_1, bold = true },
    Directory = { fg = colors.gold_1 },
    Folded = { fg = colors.text_3, bg = colors.bg_soft, italic = config.italics.comments },
    NonText = { fg = colors.text_4 },
    EndOfBuffer = { fg = colors.text_4, bg = maybe_bg(config, colors.bg) },
    SpecialKey = { fg = colors.gold_3 },
    ErrorMsg = { fg = colors.terra_1, bold = true },
    WarningMsg = { fg = colors.gold_1, bold = true },
    ModeMsg = { fg = colors.sage_1 },
    MoreMsg = { fg = colors.rose_1 },
    Question = { fg = colors.gold_1 },
    Todo = { fg = colors.bg, bg = colors.gold_1, bold = true },
    Search = { fg = colors.bg, bg = colors.gold_1 },
    IncSearch = { fg = colors.bg, bg = colors.rose_1 },
    CurSearch = { fg = colors.bg, bg = colors.rose_1 },
    Visual = { bg = colors.bg_mute },
    MatchParen = { fg = colors.rose_1, bg = colors.bg_mute, bold = true },
  }
end

return M
