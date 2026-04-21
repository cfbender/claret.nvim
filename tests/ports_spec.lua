local palette = require('claret.palette').dark

local function read_file(path)
  local lines = vim.fn.readfile(path)
  return table.concat(lines, '\n')
end

local function assert_contains(path, needle, label)
  local content = read_file(path)
  if not string.find(content, needle, 1, true) then
    error(string.format('%s: missing %s in %s', label, needle, path))
  end
end

assert_contains('ports/ghostty/claret-dark.conf', "background = " .. palette.bg, 'ghostty background')
assert_contains('ports/ghostty/claret-dark.conf', "foreground = " .. palette.text, 'ghostty foreground')
assert_contains('ports/ghostty/claret-dark.conf', "palette = 1=" .. palette.terra_1, 'ghostty ansi red')

assert_contains('ports/opencode/claret.json', '"dBg": "' .. palette.bg .. '"', 'opencode bg def')
assert_contains('ports/opencode/claret.json', '"dRose1": "' .. palette.rose_1 .. '"', 'opencode rose def')
assert_contains('ports/opencode/claret.json', '"dTerra1": "' .. palette.terra_1 .. '"', 'opencode terra def')

assert_contains('ports/yazi/claret-dark.toml', 'bg = "' .. palette.bg .. '"', 'yazi background')
assert_contains('ports/yazi/claret-dark.toml', 'fg = "' .. palette.gold_1 .. '"', 'yazi accent')
assert_contains('ports/yazi/claret-dark.toml', 'fg = "' .. palette.terra_1 .. '"', 'yazi error')

assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.bg .. '</string>', 'bat background')
assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.rose_1 .. '</string>', 'bat keyword')
assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.terra_1 .. '</string>', 'bat invalid')

local function hex_rgb(hex)
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  return string.format('%d %d %d', r, g, b)
end

-- Zellij now uses the UI-component spec so frames can be coloured
-- independently of the ANSI green slot. Frames are gold on focus.
assert_contains('ports/zellij/claret-dark.kdl', 'frame_selected {', 'zellij frame_selected block')
assert_contains(
  'ports/zellij/claret-dark.kdl',
  'base ' .. hex_rgb(palette.gold_1),
  'zellij frame gold base'
)
assert_contains(
  'ports/zellij/claret-dark.kdl',
  'exit_code_error {',
  'zellij exit_code_error block'
)
assert_contains(
  'ports/zellij/claret-dark.kdl',
  'base ' .. hex_rgb(palette.terra_1),
  'zellij terra base'
)

assert_contains('ports/kitty/claret.conf', 'background              ' .. palette.bg, 'kitty background')
assert_contains('ports/kitty/claret.conf', 'foreground              ' .. palette.text, 'kitty foreground')
assert_contains('ports/kitty/claret.conf', 'color1 ' .. palette.terra_1, 'kitty ansi red')

assert_contains('ports/starship/claret.toml', 'red     = "' .. palette.terra_1 .. '"', 'starship red')
assert_contains('ports/starship/claret.toml', 'yellow  = "' .. palette.gold_1 .. '"', 'starship yellow')
assert_contains('ports/starship/claret.toml', 'overlay = "' .. palette.bg .. '"', 'starship overlay')

print('ports ok')
