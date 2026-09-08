local apps = require("applications")

-------------------------
------ KEYBINDINGS ------
-------------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(apps.terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(apps.fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(apps.menu))

-- Move focus with mainMod + arrow keys (scrolling)
hl.bind(mainMod .. " + left", hl.dsp.layout("focus l"))
hl.bind(mainMod .. " + right", hl.dsp.layout("focus r"))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Move focused workspace with mainMod + SHIFT + arrow keys (scrolling)
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.layout("swapcol r"))

-- Reset column size with mainMod + R (scrolling)
hl.bind(mainMod .. " + R", hl.dsp.layout( "colresize 0.5" ))

-- Promote window with mainMod + P (scrolling)
hl.bind(mainMod .. " + P", hl.dsp.layout( "promote" ))

-- Example special workspace (scratchpad)
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Capture selected region to clipboard
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd( "hyprshot -m region" ))

-- Capture the entire monitor to disk
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd( "hyprshot -m output" ))

-- Autoclicker bound to front side mouse button
hl.bind("mouse:276", hl.dsp.exec_cmd( "~/Scripts/autoclicker.sh" ))
