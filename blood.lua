local PI = 3.14159
function newblood()
  local img = love.graphics.newImage("square.png")

  local emitter = love.graphics.newParticleSystem(img, 16)
  emitter:setEmissionRate(256)
  emitter:setDirection(-PI/2)
  emitter:setEmitterLifetime(.5)
  emitter:setRadialAcceleration(-.5, -.75)
  emitter:setLinearAcceleration(0,285,0,315)
  emitter:setSpeed(380,560)
  emitter:setColors(255,0,0,255)
  emitter:setSpread(PI * 1.25)
  emitter:setSizes(.8,1.4)
  emitter:setSizeVariation(0.8)
  emitter:setSpinVariation(0)
  emitter:setAreaSpread('uniform', 15, 30)
  emitter:setParticleLifetime(1,1.25)
  emitter:setColors(255,0,0,255)
  emitter:setLinearDamping(15)

  return emitter
end