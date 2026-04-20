local M = {}

function M.get(colors, config)
  return {
    CopilotSuggestion = { fg = colors.text_4, italic = config.italics.comments },
  }
end

return M
