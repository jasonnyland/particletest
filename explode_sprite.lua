local PI = 3.14159

function newexplode_sprite()
  
  local emitter = love.graphics.newParticleSystem(explode_sprite, 10)
  emitter:setEmissionRate(1000)
  emitter:setSizes(.8,1.4)
  emitter:setAreaSpread('uniform', 30, 15)
  emitter:setParticleLifetime(3)

  return emitter
end