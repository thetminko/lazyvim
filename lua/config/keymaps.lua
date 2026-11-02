local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

map("n", "<leader>bc", function()
  local current = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if buf ~= current and vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
      vim.api.nvim_buf_delete(buf, {})
    end
  end
end, { desc = "Close other buffers" })

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map("v", "<", "<gv")
map("v", ">", ">gv")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("x", "<leader>P", '"_dP', { desc = "Paste without yanking" })
map({ "n", "v" }, "<leader>X", '"_d', { desc = "Delete without yanking" })
map("n", "<leader>zz", "<cmd>e ~/.zshrc<cr>", { desc = "Edit zshrc" })
map("n", "<leader>zt", "<cmd>e ~/.tmux.conf<cr>", { desc = "Edit tmux config" })

-- root_spec resolves to the nearest package.json, so the default pickers only
-- ever see one Nx project. These search the whole monorepo instead.
map("n", "<leader>sG", function()
  Snacks.picker.grep({ cwd = LazyVim.root.git() })
end, { desc = "Grep (monorepo root)" })
map("n", "<leader>fF", function()
  Snacks.picker.files({ cwd = LazyVim.root.git() })
end, { desc = "Find files (monorepo root)" })
