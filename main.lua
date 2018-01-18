require 'fire'
require 'smoke'
require 'steam'
require 'blood'
require 'test'
require 'explode'
require 'explode_sprite'
require 'animation'
require 'image'
require 'lib/anim8/anim8'

function love.load()
  emitter = newfire()
end

function love.draw()
  love.graphics.setColor(0x81,0xa5,0x61,255)
  love.graphics.rectangle('fill', 0,0,love.graphics.getWidth(), love.graphics.getHeight())
  love.graphics.setColor(255,255,255,255)

  --this draws our particles
  love.graphics.draw(emitter, love.mouse.getX(), love.mouse.getY())
end

function love.keypressed(key)
  print("key"..key)
  if key == 'q' then
    emitter = newfire()
  elseif key == 'w' then
    emitter = newsmoke()
  elseif key == 'e' then
    emitter = newsteam()
  elseif key == 'r' then
    emitter = newblood()
  elseif key == 't' then
    emitter = newtest()
  elseif key == 'y' then
    emitter = newexplode()
  elseif key == 'u' then
    emitter = newexplode_sprite()
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
  animation.explode:update()
  love.mousePressed()
end
