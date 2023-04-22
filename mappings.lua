-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next tab" },
    ["<S-Tab>"] = { "<cmd>bprev<cr>", desc = "Last tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>fg"] = { function() require("telescope.builtin").git_files() end, desc = "Find git files" }
    -- ["<leader>go"] = { "<cmd>xdg-open $(git remote -v | cut -d @ -f 2 | cut -d ' ' -f 1 | head -1 | sed 's/:/\//' | sed 's/.git$//' | sed s'/^/https:\/\//') >& /dev/null<cr>", desc = "Open in browser" }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
