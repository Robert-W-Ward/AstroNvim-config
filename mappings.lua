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
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
        
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<Up>"] = {"<Nop>",desc = "No-op"},
    ["<Down>"] = {"<Nop>",desc = "No-op"},
    ["<Left>"] = {"<Nop>",desc = "No-op"},
    ["<Right>"] = {"<Nop>",desc = "No-op"},

    
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    
    ["<M-h>"] = {"<Left>",desc = "Move Left in insert mode"},
    ["<M-j>"] = {"<Down>",desc = "Move Down in insert mode"},
    ["<M-k>"] = {"<Up>",desc = "Move Up in insert mode"},
    ["<M-l>"] = {"<Right>",desc = "Move Right in insert mode"},


    ["<Left>"] = {"<Nop",desc = "Disable Left in insert mode"},
    ["<Down>"] = {"<Nop>",desc = "Disable Down in insert mode"},
    ["<Up>"] = {"<Nop>",desc = "Disable Up in insert mode"},
    ["<Right>"] = {"<Nop>",desc = "Disable Right in insert mode"},
  }
}
