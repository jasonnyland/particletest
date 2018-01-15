local PI = 3.14159
function newsteam()
  local img = love.graphics.newImage("smokepuff.png")

  local emitter = love.graphics.newParticleSystem(img, 256)

  emitter:setEmissionRate(256)
  emitter:setDirection(-PI/2)
  emitter:setRadialAcceleration(-.5, -.75)
  emitter:setLinearAcceleration(0,-285,0,-315)
  emitter:setSpeed(180,260)
  emitter:setColors(255,255,255,255, 255,255,255,125, 255,255,255,0)
  emitter:setSpread(PI * 0.25)
  emitter:setSizes(.4, .4)
  emitter:setSizeVariation(0.8)
  emitter:setSpinVariation(0)
  emitter:setRotation(-PI,PI)
  emitter:setAreaSpread('uniform', 30, 10)
  emitter:setParticleLifetime(1,1.25)

  return emitter
end
