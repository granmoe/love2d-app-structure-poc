require('set-paths')
local createPlayer = require('player')

lg = love.graphics

CONFIG = {
  SPEED = 300
}
 
local gameObjects = {}

function love.load()
  ASSETS = {
    images = {
      player = lg.newImage('images/spaceship.png')
    }
  }

  local player = createPlayer(gameObjects)
  gameObjects[player] = player
end

function love.update(dt)
  for _, obj in pairs(gameObjects) do
    obj:update(dt)
  end
end

function love.draw()
  for _, obj in pairs(gameObjects) do
    obj:draw()
  end
end
