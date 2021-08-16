mouseEvent = nil

function love.load()
    local gray_val = .2
    love.graphics.setBackgroundColor( gray_val, gray_val, gray_val, 1 )
    print('This is a Lua Test')
    cursor = love.mouse.getSystemCursor("crosshair")
    -- cursor = love.mouse.newCursor("assets/dot.png", 0, 0)
    love.mouse.setCursor(cursor)
    -- love.mouse.setVisible(false)
end


function love.update(dt)
    if(mouseEvent == 'pressed') then 
        print('The Mouse was Pressed')
    end

    mouseEvent = nil
end


function love.draw()
    love.graphics.setColor(1, 0, 1)
    love.graphics.circle( 'fill', 200, love.graphics.getHeight()/2, 100 )
    love.graphics.setColor(0, 1, 1)
    love.graphics.circle( 'line', love.graphics.getWidth()-200, love.graphics.getHeight()/2, 100 )
end

function love.mousepressed( x, y, button, istouch, presses )
    print(x, y, button, istouch, presses)
    mouseEvent = 'pressed'
end

function love.mousemoved( x, y, dx, dy, istouch )
    print(x, y, dx, dy, istouch)
    mouseEvent = 'dragged'
end
