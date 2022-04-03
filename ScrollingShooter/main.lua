debug = true

player = { x = 200, y = 710, speed = 150, img = nil } -- this is just for storage

function love.load(arg)
	player.img = love.graphics.newImage('assets/plane.png') 
	-- we now have an asset ready to be used inside Love
end

function love.update(dt)
	-- I always start with an easy way to exit the game
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

	if love.keyboard.isDown('left','a') then
		player.x = player.x - (player.speed*dt)
	elseif love.keyboard.isDown('right','d') then
		player.x = player.x + (player.speed*dt)
	end

end

function love.draw(dt)
	love.graphics.draw(player.img, player.x, player.y)
end
