function love.load()
  local img = love.graphics.newImage("index.png")
  
  emitter = love.graphics.newParticleSystem(img, 32)
  emitter:setParticleLifetime(1,1)
  emitter:setColors(255,0,0,255)
  emitter:setSpread(6.28)
  emitter:setSpeed(100,500)
  emitter:setLinearDamping(5)
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
