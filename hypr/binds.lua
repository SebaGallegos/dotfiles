-- Atajos de teclado generales y multimedia
local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(_G.terminal))
hl.bind(mainMod .. " + W", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(_G.fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(_G.menu))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(_G.browser))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(_G.browserIncognito))

-- Capturas de pantalla (seleccionar área)
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | tee ~/Pictures/Screenshots/$(date +'%Y%m%d_%H%M%S').png | wl-copy && notify-send "Captura de pantalla realizada" "Guardada y copiada al portapapeles"]]))

-- Asignación dinámica de Workspaces virtuales (1 al 6)
for i = 1, 6 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
