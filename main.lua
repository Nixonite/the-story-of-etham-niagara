require 'fun' ()

function love.load()

  window = {
    width = 800,
    height = 600
  }

  player = {
    x = 400,
    y = 0,
    dx = 1,
    size = 40
  }

  world = {
    points = 0
  }

  love.window.setMode(window.width, window.height)
end

function love.keypressed(key)
  world.points = world.points + 1
end

function love.update(dt)

  win_width_minus_player = window.width - player.size

  if (player.x < 0) or (player.x > win_width_minus_player) then
    player.dx = player.dx * -1
  end
  
  player.x = player.x + dt* 380 * player.dx

end

function draw_bird()
  love.graphics.setColor(.87, .84, .27)
  love.graphics.rectangle('fill', player.x, 300, player.size, player.size)
end

function draw_background()
  love.graphics.setColor(.14, .36, .46)
  love.graphics.rectangle('fill', 0, 0, window.width, window.height)
end 

function love.draw()
  draw_background()
  draw_bird()
end