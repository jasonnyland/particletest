function love.load()
  local img = love.graphics.newImage("index.png")
  
  emitter = love.graphics.newParticleSystem(img, 32)
  emitter:setLinearAcceleration(75,75,-75,-75)
  emitter:setParticleLifetime(1,1)
  emitter:setSpeed(50,50)
  emitter:setColors(255,0,0,255)
end

function love.draw()
  --this draws our particles
  love.graphics.draw(emitter, love.mouse.getX(), love.mouse.getY())
end

function love.mousePressed()
  if love.mouse.isDown(1) then
    emitter:emit(32)
	end
end

function love.update(dt)
  emitter:update(dt)
  love.mousePressed()
end
