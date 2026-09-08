------------------------
------ Animations ------
------------------------

hl.curve( "easeOutQuart", { type = "bezier", points = { {0.25, 1}, {0.5, 1} } })      
hl.curve( "easeOutQuick", { type = "bezier", points = { {0.15, 0.85}, {0.1, 1} } })  
hl.curve( "easeInQuart", { type = "bezier", points = { {0.5, 0}, {0.75, 0} } })      
hl.curve( "easeInOutCubic", { type = "bezier", points = { {0.65, 0}, {0.35, 1} } })   
hl.curve( "linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve( "almostLinear", { type = "bezier", points = { {0.25, 0.25}, {0.25, 1} } }) 

hl.curve("tightHeavy", { type = "spring", mass = 1, stiffness = 180, dampening = 22 }) 
hl.curve("looseHeavy", { type = "spring", mass = 1, stiffness = 120, dampening = 20 }) 

hl.animation({ leaf = "global", enabled = true, speed = 6, bezier = "easeOutQuart" })
hl.animation({ leaf = "border", enabled = true, speed = 2, bezier = "easeOutQuart" }) 

hl.animation({ leaf = "windows", enabled = true, speed = 5, spring = "tightHeavy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.5, spring = "tightHeavy", style = "popin 65%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, spring = "tightHeavy", style = "slide 100%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, spring = "tightHeavy" })

hl.animation({ leaf = "layers", enabled = true, speed = 4.5, spring = "tightHeavy" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, spring = "tightHeavy", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, spring = "tightHeavy", style = "fade" })

hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 4.5, bezier = "almostLinear"})
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 4, bezier = "almostLinear"})
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "easeOutQuick" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.5, bezier = "easeOutQuart" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4, bezier = "easeOutQuart" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 6, spring = "looseHeavy" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 6, spring = "looseHeavy", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.5, spring = "looseHeavy", style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 5, spring = "tightHeavy", style = "slidevert"})
