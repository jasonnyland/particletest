local PI = 3.14159
function newfire()
  local img = love.graphics.newImage("square.png")

  local emitter = love.graphics.newParticleSystem(img, 64)
  emitter:setRotation(PI * .25)
  emitter:setEmissionRate(12)
  emitter:setDirection(-PI/2)
  emitter:setLinearAcceleration(0,-25,0,-45)
  emitter:setSpeed(50,100)
  emitter:setColors(255,255,255,200, 0xf9, 0xa7, 0x2e, 200, 0xf9, 0x84, 0x2e, 200, 0xe0, 0x21, 0x14, 200, 0xe0, 0x21, 0x14, 180, 0xe0, 0x21, 0x14, 0 )
  emitter:setSpread(PI * 0.2)
  emitter:setSizes(4, 3.8, 3.2, 2, 1.5)
  emitter:setSizeVariation(0.2)
  emitter:setSpin(-2, 2)
  emitter:setSpinVariation(.2)
  emitter:setAreaSpread('normal', 15, 5)
  emitter:setParticleLifetime(1.75,2.25)

  return emitter
end
