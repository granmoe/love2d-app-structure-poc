lg = love.graphics

player = {
  x=350,
  y=275,
  x=0,
  y=0,
  img=nil
}

SPEED = 300

function love.load()
  player.img = lg.newImage('images/spaceship.png')
end

function love.update(dt)
  player.vx, player.vy = 0, 0

  if love.keyboard.isDown('up') then
     player.vy = player.vy - SPEED * dt
  end
  if love.keyboard.isDown('down') then
     player.vy = player.vy + SPEED * dt
  end
  if love.keyboard.isDown('left') then
     player.vx = player.vx - SPEED * dt
  end
  if love.keyboard.isDown('right') then
     player.vx = player.vx + SPEED * dt
  end

  player.x = player.x + player.vx
  player.y = player.y + player.vy
end

function love.draw()
  lg.draw(player.img, player.x, player.y)
  lg.print('Hi, Angie', 200, 200)
end