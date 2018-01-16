local PI = 3.14159
function newfire()
  local img = love.graphics.newImage("square.png")
  local sq = 4  --initial square size
  local w = 15 -- initial emitter box width

  local emitter = love.graphics.newParticleSystem(img, 160)
  emitter:setRotation(PI/4)
  emitter:setEmissionRate(64)
  emitter:setDirection(-PI/2)
  emitter:setLinearAcceleration(0,-25,0,-45)
  emitter:setSpeed(50,100)
  emitter:setColors(255,255,255,200, 0xf9, 0xa7, 0x2e, 200, 0xf9, 0x84, 0x2e, 200, 0xe0, 0x21, 0x14, 200, 0xe0, 0x21, 0x14, 180, 0xe0, 0x21, 0x14, 0 )
  -- emitter:setSpread(PI * 0.2)
  emitter:setSizes(sq, sq*.9, sq*.7,sq*.5, sq*.3) 
  emitter:setSizeVariation(0.2)
  emitter:setSpin(-7, 7)
  emitter:setAreaSpread('normal', w, w/3)
  emitter:setParticleLifetime(1.75,2.25)

  return emitter
end
