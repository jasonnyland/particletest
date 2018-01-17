local PI = 3.14159
function newtest()
  local img = love.graphics.newImage("square.png")

  local emitter = love.graphics.newParticleSystem(img, 20)
  emitter:setEmissionRate(1)
  emitter:setSizes(4)
  emitter:setSpin(-7,7)
  emitter:setSpinVariation(0)
  emitter:setParticleLifetime(5,5)

  return emitter
end