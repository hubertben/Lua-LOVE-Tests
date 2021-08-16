mouseEvent = nil
mousePushLock = false

function love.mousepressed( x, y, button, istouch, presses )
    mousePushLock = true
    print(x, y, button, istouch, presses)
    mouseEvent = 'pressed'
end

function love.mousemoved( x, y, dx, dy, istouch )
    print(x, y, dx, dy, istouch)
    mouseEvent = 'dragged'
end

function love.mousereleased(x, y, button)
    if button == 1 then
        mouseEvent = 'released'
    end
 end

function clickDrag()
    
end