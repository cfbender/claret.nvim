local M = {}

function M.assert_eq(actual, expected, label)
  if actual ~= expected then
    error(string.format('%s: expected %s, got %s', label, vim.inspect(expected), vim.inspect(actual)))
  end
end

function M.get_hl(name)
  return vim.api.nvim_get_hl(0, { name = name, link = false })
end

return M
