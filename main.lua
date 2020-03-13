require 'fun' ()

function love.load()

  window = {
    width = 800,
    height = 600
  }

  player = {
    x = 400,
    y = 500,
    dx = 1,
    size = 20,
    color = {.8, .6, .63}
  }

  world = {
    color = {.1, .1, .1},
    story = [[
      Haunted by memories of the past, 
      One man now goes on a journey,
      left and right.
      One man.... 

      To finally find peace of mind
      One man...
      
      ETHAM NIAGARA
    ]]
  }

  love.graphics.setNewFont('ComingSoon-Regular.ttf', 28)
  love.window.setMode(window.width, window.height)
end

function love.keypressed(key)
end

function love.mousepressed(x, y, button, istouch)
end

function update_player(dt)
  win_width_minus_player = window.width - player.size

  if (player.x < 0) or (player.x > win_width_minus_player) then
    player.dx = player.dx * -1
  end
  
  player.x = player.x + dt* 380 * player.dx
end

function love.update(dt)
  update_player(dt)
end

function draw_player()
  love.graphics.setColor(unpack(player.color))
  love.graphics.rectangle('fill', player.x, player.y, player.size, player.size)
end

function draw_background()
  love.graphics.setColor(unpack(world.color))
  love.graphics.rectangle('fill', 0, 0, window.width, window.height)
end

function love.draw()
  draw_background()
  draw_player()
  love.graphics.print(world.story, 10, 10)
end