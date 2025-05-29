local lualine = require('lualine')
local dracula = require'lualine.themes.dracula'

-- Function to get the Git root or current working directory
local function get_project_root()
  local git_dir = vim.fn.finddir('.git', vim.fn.expand('%:p:h') .. ';')
  if git_dir ~= '' then
    return vim.fn.fnamemodify(git_dir, ':h')
  else
    return vim.fn.getcwd()
  end
end

-- Function to get the relative path
local function relative_path()
  local file_path = vim.fn.expand('%:p') -- Full path of the current file
  local root_dir = get_project_root()
  if file_path == '' or root_dir == '' then
    return ''
  end

  local relative = vim.fn.fnamemodify(file_path, ':.' .. root_dir)
  if relative == file_path then
    return vim.fn.fnamemodify(file_path, ':t')
  end

  return relative:gsub('^%./', '')
end

-- Configure lualine
lualine.setup({
  options = {
    theme = dracula,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    icons_enabled = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      {
        'diff', -- Git diff status (added, modified, removed)
        symbols = { added = '+', modified = '~', removed = '-' },
        color_added = '#00ff00',
        color_modified = '#ffaa00',
        color_removed = '#ff0000',
      },
    },
    lualine_c = {
      {
        relative_path, -- Use the custom function
        color = { fg = '#ffffff', gui = 'bold' }, -- Customize appearance
      },
    },
    lualine_x = {
      'diagnostics', 'encoding', 'fileformat', 'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
})
