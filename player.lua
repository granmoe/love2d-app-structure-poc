local Player = {}

function Player.draw(self)
  lg.draw(self.img, self.x, self.y)
end

function Player.update(self, dt)
  self.vx, self.vy = 0, 0

  if love.keyboard.isDown('up') then
    self.vy = self.vy - CONFIG.SPEED * dt
  end
  if love.keyboard.isDown('down') then
    self.vy = self.vy + CONFIG.SPEED * dt
  end
  if love.keyboard.isDown('left') then
    self.vx = self.vx - CONFIG.SPEED * dt
  end
  if love.keyboard.isDown('right') then
    self.vx = self.vx + CONFIG.SPEED * dt
  end

  if love.keyboard.isDown('d') then
    self:destroy()
  end

  self.x = self.x + self.vx
  self.y = self.y + self.vy
end

function Player.destroy(self)
  self.gameObjects[self] = nil
  self = nil
end

local function createPlayer(gameObjects)
  local player = {
    gameObjects = gameObjects,
    x = 350,
    y = 275,
    x = 0,
    y = 0,
    img = ASSETS.images.player,
  }

  setmetatable(player, { __index = Player })

  gameObjects[player] = player

  return player
end

return createPlayer
