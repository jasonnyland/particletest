require 'fire'
require 'smoke'
require 'steam'
require 'blood'

function love.load()
  emitter = newfire()
end

function love.draw()
  love.graphics.setColor(0x81,0xa5,0x61,255)
  love.graphics.rectangle(0,0,love.graphics.getWidth(), love.graphics.getHeight())
  love.graphics.setColor(255,255,255,255)

  --this draws our particles
  love.graphics.draw(emitter, love.mouse.getX(), love.mouse.getY())
end

function love.keyPressed()
  if love.keyboard.isDown('q') then
    emitter = newfire()
  elseif love.keyboard.isDown('w') then
    emitter = newsmoke()
  elseif love.keyboard.isDown('e') then
    emitter = newsteam()
  elseif love.keyboard.isDown('r') then
    emitter = newblood()
  end
end

function love.mousePressed()
  if love.mouse.isDown(1) then
    emitter:start()
  else
    emitter:stop()
	end
end

function love.update(dt)
  emitter:update(dt)
  love.mousePressed()
end
