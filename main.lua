
function love.load()
    print('This is a Lua Test')
end


function love.update(dt)

end


function love.draw()
    love.graphics.circle( 'fill', 200, love.graphics.getHeight()/2, 100 )
    love.graphics.circle( 'line', love.graphics.getWidth()-200, love.graphics.getHeight()/2, 100 )
    love.graphics.circle( 'line', love.mouse.getX(), love.mouse.getY(), 5 )
    love.mouse.setVisible(false)
end

function love.mousepressed( x, y, button, istouch, presses )
    print(x, y, button, istouch, presses)
end

function love.mousemoved( x, y, dx, dy, istouch )
    print(x, y, dx, dy, istouch)
end