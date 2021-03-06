require('mouseHandler')

ang = 0
ang2 = math.pi

function love.load()
    gray_val = .2
    love.graphics.setBackgroundColor( gray_val, gray_val, gray_val, 1 )
    print('This is a Lua Test')
    cursor = love.mouse.getSystemCursor("crosshair")
    -- cursor = love.mouse.newCursor("assets/dot.png", 0, 0)
    love.mouse.setCursor(cursor)
    -- love.mouse.setVisible(false)

    leo = love.graphics.newImage("assets/leo.jpg")
    leo_width = leo:getWidth()
    leo_height = leo:getHeight()
end


function love.update(dt)
    mouseHandler()
    if(mouseEvent == 'pressed') then 
        -- print('The Mouse was Pressed')
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

    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(leo, love.graphics.getWidth()/2, love.graphics.getHeight()/2, 0, .5, .5, leo_width / 2, leo_height / 2)

    for index, value in ipairs(shapes) do
        love.graphics.setColor(1, 1, 1)
        love.graphics.circle('fill', value.xPos, value.yPos, 2)
    end
end



function drawRotatedRectangle(mode, x, y, width, height, angle)
	love.graphics.push()
	love.graphics.translate(x, y)
	love.graphics.rotate(angle)
	love.graphics.rectangle(mode, -width/2, -height/2, width, height)
	love.graphics.pop()
end