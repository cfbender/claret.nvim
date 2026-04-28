local helpers = require('tests.helpers')
local claret = require('claret')

claret.setup({ variant = 'dark' })
claret.load()

local cases = {
  { 'BlinkCmpMenu', '#211618', 'bg' },
  { 'NoiceCmdlinePopupBorder', '#8995A8' },
  { 'WhichKey', '#C75B7A' },
  { 'FlashLabel', '#180810' },
  { 'GitSignsAdd', '#8FA86E' },
  { 'TodoFgTODO', '#D4A76A' },
  { 'IblIndent', '#3A2E25' },
  { 'RainbowDelimiterRed', '#C75B7A' },
  { 'AerialClassIcon', '#8995A8' },
}

vim.list_extend(cases, {
  { 'HeirlineStatusLine', '#2B1F22', 'bg' },
  { 'ClaretLualineNormalA', '#180810' },
  { 'TinyInlineDiagnosticError', '#C44536' },
  { 'ToggleTermBorder', '#9A3D5A' },
  { 'GrappleHandle', '#C75B7A' },
  { 'CodeDiffAdd', '#8FA86E' },
  { 'CoverageCovered', '#8FA86E' },
  { 'DapBreakpoint', '#C44536' },
  { 'DapUIWatchesValue', '#D4A76A' },
  { 'CopilotSuggestion', '#71685E' },
  { 'WindowPickerStatusLine', '#180810' },
})

for _, case in ipairs(cases) do
  local hl = helpers.get_hl(case[1])
  local channel = case[3] or 'fg'
  helpers.assert_eq(string.format('#%06X', hl[channel]), case[2], case[1])
end

print('plugin pack A ok')
