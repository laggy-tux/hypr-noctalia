local MAIN = "eDP-1"
local EXTERNAL = "HDMI-A-1"

local function sync_main_monitor()
    hl.monitor({
        output = MAIN,
        disabled = hl.get_monitor(EXTERNAL) ~= nil,
    })
end

hl.on("monitor.added", sync_main_monitor)
hl.on("monitor.removed", sync_main_monitor)

sync_main_monitor() -- apply immediately on config load too44
