
local function status_line()
  local file_name = "%f"
  local file_type = "%y"
  local git_branch_name = 'master' -- vim.g['gitbranch#name']()
  local buffer_number = "%n"
  local line_number = "%l"
  local column = "%c"
  local right_align = "%="

  return string.format(
    "File: %s, Type: %s %s Git: %s, Bn: %s, Ln: %s, Col: %s",
    file_name,
    file_type,
	right_align,
    git_branch_name,
    buffer_number,
    line_number,
    column
  )
end

vim.opt.statusline = status_line()
