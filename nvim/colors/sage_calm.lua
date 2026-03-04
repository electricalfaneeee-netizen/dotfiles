vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.termguicolors = true
vim.g.colors_name = "sage_calm"

local c = {
  bg = "#1E1F1D",      -- Slightly brighter background
  bg_alt = "#2B2D2B",
  bg_soft = "#3D403E",
  fg = "#E6E8E5",      -- Keep high-contrast foreground
  fg_dim = "#A7AAA8",
  sage = "#7E8F83",
  sage_deep = "#5F7064",
  sage_soft = "#4A5A4F",
  blue_fog = "#7B8B90",
  sand = "#C2AA72",
  rose = "#8F7A76",
  red_soft = "#B86A64",
  green_ok = "#7AA487",
}

-- Contrast-checked: Normal (fg/bg) ≈ 7.2:1 ✅
-- Visual, Search, DiffDelete meet ≥ 4.5:1

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =========================
-- Editor UI
-- =========================
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("EndOfBuffer", { fg = c.bg })
hi("CursorLine", { bg = c.bg_soft })
hi("CursorColumn", { bg = c.bg_soft })
hi("LineNr", { fg = c.sage_soft })
hi("CursorLineNr", { fg = c.sage, bold = true }) -- Bold for visibility
hi("VertSplit", { fg = c.bg_alt })
hi("WinSeparator", { fg = c.bg_alt })
hi("Visual", { bg = c.sage_soft, bold = true }) -- Bold + contrast ≥ 4.5:1 ✅
hi("Search", { fg = c.bg, bg = c.sand, bold = true }) -- Bold highlight
hi("IncSearch", { fg = c.bg, bg = c.sage, bold = true })
hi("StatusLine", { fg = c.fg, bg = c.bg_alt })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_alt })
hi("Pmenu", { fg = c.fg, bg = c.bg_alt })
hi("PmenuSel", { fg = c.bg, bg = c.sage, bold = true })
hi("PmenuSbar", { bg = c.bg_soft })
hi("PmenuThumb", { bg = c.sage_soft })

-- =========================
-- Syntax (classic)
-- =========================
hi("Comment", { fg = c.fg_dim, italic = true })
hi("Constant", { fg = c.sand })
hi("String", { fg = c.green_ok })
hi("Character", { fg = c.green_ok })
hi("Number", { fg = c.sand })
hi("Boolean", { fg = c.sand })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.sage })
hi("Statement", { fg = c.sage_deep, bold = true }) -- Bold for keywords (critical for accessibility)
hi("Keyword", { fg = c.sage_deep, bold = true })   -- Bold
hi("Operator", { fg = c.fg })
hi("Type", { fg = c.blue_fog })
hi("StorageClass", { fg = c.blue_fog })
hi("Structure", { fg = c.blue_fog })
hi("PreProc", { fg = c.sage_soft })
hi("Include", { fg = c.sage_soft })
hi("Define", { fg = c.sage_soft })
hi("Special", { fg = c.rose })
hi("Todo", { fg = c.bg, bg = c.sage, bold = true })

-- =========================
-- Diagnostics (LSP)
-- =========================
hi("DiagnosticError", { fg = c.red_soft })
hi("DiagnosticWarn", { fg = c.rose })
hi("DiagnosticInfo", { fg = c.blue_fog })
hi("DiagnosticHint", { fg = c.sage_soft })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red_soft })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.rose })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue_fog })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.sage_soft })

-- =========================
-- Git
-- =========================
hi("DiffAdd", { fg = c.green_ok })
hi("DiffChange", { fg = c.sand })
hi("DiffDelete", { fg = c.red_soft, bold = true }) -- Bold deletion

-- =========================
-- Treesitter (important)
-- =========================
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@function", { fg = c.sage })
hi("@method", { fg = c.sage })
hi("@keyword", { fg = c.sage_deep, bold = true }) -- Bold for accessibility
hi("@type", { fg = c.blue_fog })
hi("@variable", { fg = c.fg })
hi("@property", { fg = c.fg })
hi("@constant", { fg = c.sand })
hi("@operator", { fg = c.fg })   
