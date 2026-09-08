-----------------------------
--              ___ _      --
--  ___ ___ ___|  _|_|___  --
-- |  _| . |   |  _| | . | --
-- |___|___|_|_|_| |_|_  | --
--                   |___| --
-- for			  -------------------------------------------------------------------------
--												 --
-- ░██     ░██ ░██     ░██ ░█████████  ░█████████  ░██            ░███    ░███    ░██ ░███████   --
-- ░██     ░██  ░██   ░██  ░██     ░██ ░██     ░██ ░██           ░██░██   ░████   ░██ ░██   ░██  --
-- ░██     ░██   ░██ ░██   ░██     ░██ ░██     ░██ ░██          ░██  ░██  ░██░██  ░██ ░██    ░██ --
-- ░██████████    ░████    ░█████████  ░█████████  ░██         ░█████████ ░██ ░██ ░██ ░██    ░██ --
-- ░██     ░██     ░██     ░██         ░██   ░██   ░██         ░██    ░██ ░██  ░██░██ ░██    ░██ --
-- ░██     ░██     ░██     ░██         ░██    ░██  ░██         ░██    ░██ ░██   ░████ ░██   ░██  --
-- ░██     ░██     ░██     ░██         ░██     ░██ ░██████████ ░██    ░██ ░██    ░███ ░███████   --
--                                                                                               --
---------------------------------------------------------------------------------------------------

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")

require("applications")
require("aesthetics")
require("animations")
require("keybinds")

----------------------
------ MONITORS ------
----------------------

hl.monitor({
    output   = "DP-1",
    mode     = "3840x2160@120",
    position = "0x0",
    scale    = "1",
})

-----------------------
------ AUTOSTART ------
-----------------------

hl.on("hyprland.start", function ()
   hl.exec_cmd("uwsm app -- hyprlock --immediate-render") 
   hl.exec_cmd("uwsm app -- nm-applet")
   hl.exec_cmd("uwsm app -- qs")
   hl.exec_cmd("uwsm app -- hyprpaper")
   hl.exec_cmd("uwsm app -- mako")
   hl.exec_cmd("uwsm app -- copyq")
   hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 45")
end)

-----------------------------------
------ ENVIRONMENT VARIABLES ------
-----------------------------------

hl.env("XCURSOR_SIZE", "45")
hl.env("HYPRCURSOR_SIZE", "45")

-------------------------
------ PERMISSIONS ------
-------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

-------------------
------ MISC -------
-------------------
hl.config({
    misc = {
	force_default_wallpaper = 0,
	disable_hyprland_logo = true,

	allow_session_lock_restore = true,

	animate_manual_resizes = true,
	animate_mouse_windowdragging = true,

	disable_splash_rendering = true,

	enable_swallow = true,

	focus_on_activate = true,
	
	font_family = "Noto Sans",

	middle_click_paste = false,
    },
})

-------------------
------ INPUT ------
-------------------

hl.config({
    input = {
	kb_layout = "us",
	kb_variant = "",
	kb_model = "",
	kb_options = "",
	kb_rules = "",

	follow_mouse = 1,

	sensitivity = 0,
     
	repeat_rate = 43,
	repeat_delay = 450,

	touchpad = {
	    natural_scroll = false
	}
    }
})

hl.device({
    name = "realtek-mchose-m7",
    sensitivity = -1.0,
})

------------------------------------
------ WINDOWS AND WORKSPACES ------
------------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrule
-- windowrule = float,class:^(kitty)local ,title:^(kitty)local 

-- Ignore maximize requests from apps. You'll probably like this.
-- windowrule = suppressevent maximize, class:.*

-- Fix some dragging issues with XWayland
-- windowrule = nofocus,class:^local ,title:^local ,xwayland:1,floating:1,fullscreen:0,pinned:0

-- windowrulev2 = opacity 0.90 0.90, class:^(zen)local 
