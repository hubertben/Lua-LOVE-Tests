drawPixel = {}

xPos = 0
yPos = 0

function drawPixel:new (o, x, y)
    o = o or {}
    xPos = x
    yPos = y
    setmetatable(o, self)
    self.__index = self
    return o
end