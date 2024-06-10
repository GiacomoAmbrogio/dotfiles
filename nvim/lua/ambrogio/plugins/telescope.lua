return{
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local action = require("telescope.actions")
    local builtin =  require("telescope.builtin")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
--        mappings = {
--          i = {
--            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
--            ["<C-j>"] = actions.move_selection_next, -- move to next result
--            ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
--            ["<C-t>"] = trouble_telescope.smart_open_with_trouble,
--          },
--        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap
    keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Open project Telescope" })
    -- These require ripgrep in PATH
    keymap.set("n", "<leader>pg", "<cmd>Telescope live_grep<cr>", { desc = "Open grep project Telescope" })
    keymap.set("n", "<leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, {  desc = "Project Grep Find" })
    keymap.set("n", "<leader>pt", "<cmd>TodoTelescope<cr>",{  desc = "Open project TODO" })
    keymap.set("n", "<leader>,", function() builtin.buffers() end, {  desc = "Open active Buffers" })
--    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
--    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
--    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

  end
}
