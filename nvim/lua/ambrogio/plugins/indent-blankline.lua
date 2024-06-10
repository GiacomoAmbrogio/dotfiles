return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = { 
      char = "┊",
      tab_char = ">",
    },
    whitespace = { highlight = { "Whitespace", "NonText" } },
    scope = { show_start = false },
  },
}

