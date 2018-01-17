local PI = 3.14159
function newexplode()
  local img = love.graphics.newImage("square.png")

  local emitter = love.graphics.newParticleSystem(img, 64)
  emitter:setEmissionRate(1000)
  emitter:setDirection(-PI/2)
  emitter:setLinearAcceleration(0,285,0,315)
  emitter:setEmitterLifetime(.01)
  emitter:setSpeed(200,500)
  emitter:setColors(255,255,0,255)
  emitter:setSpread(2*PI)
  emitter:setSizes(.8,1.4)
  emitter:setSizeVariation(0.8)
  emitter:setSpinVariation(0)
  emitter:setAreaSpread('uniform', 30, 15)
  emitter:setParticleLifetime(.75,1)
  emitter:setLinearDamping(6)

  return emitter
end