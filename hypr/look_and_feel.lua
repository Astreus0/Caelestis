Information about this configuration: https://wiki.hypr.land/Configuring/Basics/Variables/
local colors = require("colors")
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = { 
            active_border   = {
                 colors = {
                       colors.royal_blue,
                       colors.sky_blue
                 },
                 angle = 5
             },
            inactive_border = colors.steel_blue,
        },
        -- Set to true for changing size window by clicking and dragging on border and gaps.
        resize_on_border = false,

        -- Information about this parameter: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/
        allow_tearing = false,

        layout = "dwindle",

    },
    
    decoration = {
        rounding       = 10,
        rounding_power = 1,

        --Transparency of focused and unfocused windows
        active_opacity   = 0.8,
        inactive_opacity = 0.6,
    
        shadow = {
            enabled      = true, 
            range        = 5,
            render_power = 3,
            color        = colors.navy_blue,
        },

        blur = {
            enabled = true,
            size    = 3,
            passes  = 2,
            vibrancy = 0.1,
        },
    }, 
    animations = {
        enabled = true, 
    },
})

-- Information about animations and curves: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Information about this parameter: https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

-- Information about this parameter: https://wiki.hypr.land/Configuring/Layouts/Master-Layout/
hl.config ({
    master = {
        new_status = "master",
    },
})

-- Information about this parameter: https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({ 
    scrolling = {
        fullscreen_on_one_column = true,
    }, 
})
