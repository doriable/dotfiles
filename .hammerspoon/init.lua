local wm = require('wm')

-- window management
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "H", "left", function () wm.windowToCell(wm.left) end)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "L", "right", function() wm.windowToCell(wm.right) end)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "K", "up", function () wm.windowToCell(wm.top) end)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "J", "down", function () wm.windowToCell(wm.bottom) end)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "C", "columns", function () wm.verticalOrganize() end)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "R", "rows", function () wm.horizontalOrganize() end)
hs.hotkey.bind({"cmd", "shift"}, "F", "fullscreen", function () wm.maxWindow() end)
