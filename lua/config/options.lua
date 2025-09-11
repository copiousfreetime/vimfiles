-- Globals
vim.g.have_nerdfont = true

local opt = vim.opt

opt.clipboard = vim.env.SSH_TY and "" or "unnamedplus"

-- Moving around, searching and patterns
opt.ignorecase = true  -- searches are case insensitive...
opt.smartcase = true   -- unless they contain a capital letter

-- Displaying text
opt.scrolloff = 4       -- show 3 lines above/below cursor
opt.wrap = false        -- do not wrap long lines
opt.sidescroll = 1      -- scroll 1 to the left/right
opt.sidescrolloff = 5   -- keep at least 5 cols to the left/right of cursor

opt.list = true         -- show invisible characters
opt.listchars = {
  tab = "> ",
  trail = "-",
  extends = ">",
  precedes = "<",
  nbsp = "+"
}
opt.number = true       -- show line numbers
opt.signcolumn = 'yes'

-- Syntax, highlighting, and spelling
opt.background = "dark"

-- Color column (conditional check for older vim versions not needed in nvim)
opt.colorcolumn = "+0,120"  -- show a line at text width and at 120

-- Multiple windows
opt.winheight = 10      -- current window has an ok height
opt.winminheight = 3    -- other open windows have 3 lines showing
opt.hidden = true       -- hide non-visual windows instead of unloading them

opt.splitbelow = true   -- new windows are split below
opt.splitright = true  -- and to the right

-- Multiple tab pages
opt.showtabline = 2     -- always show a tabline

-- Messages and info
opt.showcmd = true      -- show the current command
opt.showmode = true     -- show the current mode
opt.ruler = true        -- show the cursor position in the lower right
opt.visualbell = true   -- use visual bell

-- Editing text
opt.textwidth = 80      -- Where to break lines
opt.showmatch = true    -- when inserting a bracket, show its match
opt.matchtime = 1       -- show match for 1 tenth of a second
opt.joinspaces = false  -- remove 2 spaces after . when joining a line

-- Tabs and indenting
opt.tabstop = 2         -- 2 space tabstops
opt.shiftwidth = 2      -- 2 space indents
opt.shiftround = true   -- round indent to multiple of shiftwidth
opt.softtabstop = 2     -- 2 spaces insert when hitting <Tab>
opt.expandtab = true    -- always expand tabs

-- 15. Folding
opt.foldmethod = "syntax"  -- use the syntax for folding
opt.foldenable = false     -- default to all folds open

-- 18. Reading and writing files
opt.modeline = true     -- allow per file mode lines
opt.modelines = 20      -- look in the first 20 lines for a modeline
opt.endofline = true    -- always have a end of line on the last line
opt.autowrite = true    -- automatically write files when switching buffers

-- 19. The swap file
opt.swapfile = false    -- no swapfile

-- 20. Command line editing
-- What files to ignore for filename completion
opt.wildignore:append({
  "*.o", "*.obj", "*~", ".git", "*.rbc", "*.class", ".svn", "*.gem",
  "*.zip", "*.tar", "*.gz", "*.tar.gz", "*.tar.bz2", "*.rar", "*.tar.xz",
  "vendor/gems/*", "vendor/cache/*", ".bundle/*",
  "*.swp", "*~", "._*"
})

opt.wildmode = "longest:full,full"  -- move to longest common substr and start wildmenu

-- Undo file (conditional check not needed in nvim)
opt.undofile = true            -- use an undo file
opt.undodir = vim.fn.expand("~/.vimundo")  -- where to have the undo history
opt.undolevels = 10000         -- keep 10000 lines of undo history

-- 24. Multi-byte characters
opt.fileencoding = "utf-8"
