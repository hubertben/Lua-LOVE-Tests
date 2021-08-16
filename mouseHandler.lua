mouseEvent = nil
mousePushLock = false

require('drawPixel')


shapes = {}

function love.mousepressed( x, y, button, istouch, presses )
    mousePushLock = true
    mouseEvent = 'pressed'

    
    

    
end

function love.mousemoved( x, y, dx, dy, istouch )
    mouseEvent = 'dragged'
    
end

function love.mousereleased(x, y, button)
    mousePushLock = false
    mouseEvent = 'released ' .. button
 end

function clickDrag()
    if(mousePushLock) then
        -- print('Mouse Clicked and Dragged:', love.mouse.getX(), love.mouse.getY())
        local p = drawPixel:new{xPos = love.mouse.getX(), yPos = love.mouse.getY()}
        table.insert(shapes, p)
    end
end

function mouseHandler()
    clickDrag()
end