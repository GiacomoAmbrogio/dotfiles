return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('dashboard').setup{
      
      theme = 'hyper',          --  theme is doom and hyper default is hyper
      shortcut_type = 'number', --  shorcut type 'letter' or 'number'
      --change_to_vcs_root,  -- default is false,for open file in hyper mru. it will change to the root of vcs
      config = {                --  config used for theme
        --header = {'AAA'}-- type is table def
        week_header = {
          enable = true, --boolean use a week header
          -- concat = 'AAA'  --concat string after time string line
          append = {'AAA'} --table append after time string line
        },
        disable_move = false, -- boolean default is false disable move key
      },
    --  preview = {
--        command,           -- preview command
  --      file_path,         -- preview file path
      --  file_height,       -- preview file height
      --  file_width,        -- preview file width
      -- },
    }

  end,
}
