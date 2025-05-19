local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<C-h>a", mark.add_file)
vim.keymap.set("n", "<C-h>t", ui.toggle_quick_menu)

-- Harpoon Jump
vim.keymap.set("n", "<C-h>", function()
  local ok, key = pcall(vim.fn.getchar)
  if not ok then return end

  local char = type(key) == "number" and vim.fn.nr2char(key) or key
  local index = tonumber(char)

  if index and index >= 1 and index <= 9 then
    ui.nav_file(index)
  else
    print("Invalid Harpoon index: " .. char)
  end
end, { desc = "Harpoon: Go to file 1-9" })
