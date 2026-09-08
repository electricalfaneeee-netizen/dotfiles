------------------------
------ AESTHETICS ------
------------------------

-- Backgrounds
local bg = "rgba(30,31,29,0.97)"          -- Midnight Gray
local panel = "rgba(43,45,43,0.95)"       -- Iron Gray
local surface = "rgba(61,64,62,0.95)"     -- Ash Gray

-- Sage Accents
local sage = "rgba(95,112,100,1)"       -- Sage Base
local sage_deep = "rgba(74,90,79,1)"    -- Sage Deep
local sage_mist = "rgba(126,143,131,1)" -- Sage Mist

-- Tints
local rose = "rgba(143,122,118,1)"
local sand = "rgba(148,139,121,1)"
local bluefog = "rgba(123,139,144,1)"

-- Text
local text_main = "rgba(230,232,229,1)"
local text_secondary = "rgba(167,170,168,1)"

hl.config({
    general = {
	gaps_in = 15,
	gaps_out = 50,

	border_size = 4,

	col = {
	    active_border = { colors = {sage_deep, sage}, angle = 45},
	    inactive_border = sand,
	},

	resize_on_border = true,

	allow_tearing = false,

	layout = "scrolling",

	snap = {
	    enabled = true,
	}
    },

    decoration = {
	rounding = 20,
	rounding_power = 0,

	active_opacity = 0.95,
	inactive_opacity = 0.8,

	shadow = {
	    enabled = false,
	},

	blur = {
	    enabled = true,
	    size = 5,
	    passes = 3,
	    ignore_opacity = true,
	    noise = 0.03,
	    contrast = 1.8,

	    -- Soon enough... when the update comes
	    -- variant = "acrylic",
	},

	motion_blur = {
	    enabled = true,
	    samples = 3,
	},
    },

    animations = {
	enabled = true,
    },
})

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

