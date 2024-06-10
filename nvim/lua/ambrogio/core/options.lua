vim.cmd('let g:netrw_liststyle = 3')

local opt = vim.opt


opt.mouse = ""

opt.scrolloff = 12
opt.wrap = false

opt.updatetime = 50
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.backspace = 'indent,eol,start'

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- apparence
opt.showmode = false
opt.relativenumber = true
opt.number = true

opt.termguicolors = true
opt.background = 'dark'

opt.signcolumn = 'yes'
opt.cursorline = true
opt.colorcolumn = "80"

-- split window
opt.splitright = true
opt.splitbelow = true




