-- Asignación estática de Workspaces a pantallas
hl.workspace_rule({ workspace = "1", monitor = "DP-1" })
hl.workspace_rule({ workspace = "2", monitor = "DP-1" })
hl.workspace_rule({ workspace = "3", monitor = "DP-1" })
hl.workspace_rule({ workspace = "4", monitor = "DP-1" })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1" })

-- Forzar invisibilidad absoluta al indicador de compartir pantalla
hl.window_rule({
    name = "hide-sharing-indicator-1",
    match = { title = "^(.*is sharing your screen\\..*)$" },
    opacity = "0.0 override 0.0 override",
})

hl.window_rule({
    name = "hide-sharing-indicator-2",
    match = { title = "^(.*is sharing.*)$" },
    opacity = "0.0 override 0.0 override",
})
