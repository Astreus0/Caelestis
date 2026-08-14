-- Autostart of programs after reboot.
local programs = require("programs")
hl.on("hyprland.start", function() 
  hl.exec_cmd(programs.terminal)
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar & hyprpaper")
end)
