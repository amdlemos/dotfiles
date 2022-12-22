local set = vim.opt

-- files
set.backup = false
set.swapfile = false
set.wrap = false 
set.fileencoding = "utf-8"
set.cursorline = true

-- Indenting
set.expandtab = true
set.shiftwidth= 2
set.smartindent = true
set.tabstop = 2
set.softtabstop = 2
set.showtabline = 2
set.smarttab = true
                
 -- number line
set.number = true
set.relativenumber = false 
set.signcolumn = "yes:1" -- Add extra sign column next to line number

-- otheres
set.clipboard = 'unnamedplus'
set.mouse = 'a'
set.hidden = true
set.cmdheight = 1
set.termguicolors = true -- needed for bufferline
set.laststatus = 3

-- python set
vim.g.python3_host_prog = '/home/fernanda/.asdf/shims/python3'
