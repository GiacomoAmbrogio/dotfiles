return{
  "echasnovski/mini.bufremove", 
  version = false,
  config = function()

    local bufremove = require("mini.bufremove")

    bufremove.setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", {  desc = "Delete current buffer" })

  end,


}




