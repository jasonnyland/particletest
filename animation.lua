local animation = {}

function animation.init()

  local explode_grid = anim8.newGrid(128, 128, image.explode:getWidth(), image.explode:getHeight(), 0, 0, 0)

  animation.explode = anim8.newAnimation(explode_grid('1-10',1), 1)

return animation