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

assert_contains('ports/opencode/claret-dark.json', '"background": "' .. palette.bg .. '"', 'opencode background')
assert_contains('ports/opencode/claret-dark.json', '"keyword": "' .. palette.rose_1 .. '"', 'opencode keyword')
assert_contains('ports/opencode/claret-dark.json', '"error": "' .. palette.terra_1 .. '"', 'opencode error')

assert_contains('ports/yazi/claret-dark.toml', 'bg = "' .. palette.bg .. '"', 'yazi background')
assert_contains('ports/yazi/claret-dark.toml', 'fg = "' .. palette.gold_1 .. '"', 'yazi accent')
assert_contains('ports/yazi/claret-dark.toml', 'fg = "' .. palette.terra_1 .. '"', 'yazi error')

assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.bg .. '</string>', 'bat background')
assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.rose_1 .. '</string>', 'bat keyword')
assert_contains('ports/bat/ClaretDark.tmTheme', '<string>' .. palette.terra_1 .. '</string>', 'bat invalid')

assert_contains('ports/zellij/claret-dark.kdl', 'bg "' .. palette.bg .. '"', 'zellij background')
assert_contains('ports/zellij/claret-dark.kdl', 'fg "' .. palette.text .. '"', 'zellij foreground')
assert_contains('ports/zellij/claret-dark.kdl', 'red "' .. palette.terra_1 .. '"', 'zellij red')

print('ports ok')
