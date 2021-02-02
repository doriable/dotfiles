local This = {}

local GRID = 4
local MID = GRID / 2
hs.grid.setGrid(GRID .. 'x' .. GRID)
hs.grid.setMargins({0, 0})
hs.window.animationDuration = 0

This.left = {x = 0, y = 0, w = MID, h = GRID}
This.right = {x = MID, y = 0, w = MID, h = GRID}
This.top = {x = 0, y = 0, w = GRID, h = MID}
This.bottom = {x = 0, y = MID, w = GRID, h = MID}
This.topLeft = {x = 0, y = 0, w = MID, h = MID}
This.topRight = {x = MID, y = 0, w = MID, h = GRID}
This.bottomLeft = {x = 0, y = MID, w = MID, h = MID}
This.bottomRight = {x = MID, y = MID, w = MID, h = MID}
This.fullscreen = {x = 0, y = 0, w = GRID, h = GRID}

function This.windowToCell(cell, window)
  if window == nil then
    window = hs.window.focusedWindow()
  end
  if window then
    local screen = window:screen()
    hs.grid.set(window, cell, screen)
  end
end

function This.maxWindow(window)
  if window == nil then
    window = hs.window.focusedWindow()
  end
  if window then
    This.windowToCell(This.fullscreen, window)
  end
end

function This.verticalOrganize()
  left = true
  for _, window in pairs(hs.window.allWindows()) do
    if left == true then
      This.windowToCell(This.left, window)
      left = false
    else
      This.windowToCell(This.right, window)
      left = true
    end
  end
end

function This.horizontalOrganize()
  top = true
  for _, window in pairs(hs.window.allWindows()) do
    if top == true then
      This.windowToCell(This.top, window)
      top = false
    else
      This.windowToCell(This.bottom, window)
      top = true
    end
  end
end

return This