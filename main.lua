mouseEvent = nil
ang = 0
ang2 = math.pi

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

    love.graphics.setColor(1, 1, 0)
    love.graphics.arc( "line", love.graphics.getWidth()/2, love.graphics.getHeight()/2, 1280/2 - 200, ang, ang2)

    love.graphics.setColor(0, 1, 0)
    local angle = os.clock() -- Rotate the rectangle over time.
	drawRotatedRectangle("fill", 150, 150, 100,60, angle)
end

function love.mousepressed( x, y, button, istouch, presses )
    print(x, y, button, istouch, presses)
    mouseEvent = 'pressed'
end

function love.mousemoved( x, y, dx, dy, istouch )
    print(x, y, dx, dy, istouch)
    mouseEvent = 'dragged'
end

function drawRotatedRectangle(mode, x, y, width, height, angle)
	love.graphics.push()
	love.graphics.translate(x, y)
	love.graphics.rotate(angle)
	love.graphics.rectangle(mode, -width/2, -height/2, width, height)
	love.graphics.pop()
end