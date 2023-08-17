-- local M = {}
--
-- function ListToSQLFragment(elements)
--   local fragment = "(" .. table.concat(elements, "', '") .. "')"
--   return fragment
-- end
--
-- return M
--
local M = {}

function M.ListToQuotedParantheses()
  local selected = vim.fn.getline("'<", "'>")
  local quoted = {}

  for _, line in ipairs(selected) do
    table.insert(quoted, "('" .. line .. "')")
  end

  local first = vim.fn.line("'<")

  for i, quoted in ipairs(quoted) do
    vim.fn.setline(first + i - 1, quoted)
  end

  vim.fn.setpos('.', { 0, first + #quoted - 1, 0, 0 })
end

return M
