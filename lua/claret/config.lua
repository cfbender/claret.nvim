local M = {}

local default_config = {
  variant = 'auto',
  transparent = false,
  italics = {
    comments = true,
    keywords = true,
    parameters = true,
    decorators = true,
  },
  plugins = { all = true },
  overrides = function()
    return {}
  end,
  groups = {},
}

function M.defaults()
  return vim.deepcopy(default_config)
end

function M.merge(user)
  return vim.tbl_deep_extend('force', M.defaults(), user or {})
end

return M
