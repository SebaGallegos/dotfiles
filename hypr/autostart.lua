-- Aplicaciones que inician con el entorno gráfico

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")
    hl.exec_cmd("systemctl --user start gnome-keyring-daemon.service")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("hyprpaper &")
    hl.exec_cmd("waybar")
end)
